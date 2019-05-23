`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: LU
// Engineer: Gusts Kaksis
// 
// Create Date:    09:05:16 05/20/2019 
// Design Name: 
// Module Name:    processor 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module processor(
		input i_Clock,
		input i_ByteReady,
		input [7:0] i_Byte,
		input i_ReadyForOutput,
		output o_ByteReady,
		output [7:0] o_Byte
    );

	// UART registers
	reg [31:0] temp_data = 0;
	reg [31:0] temp_mask = 0;
	reg [9:0] temp_counter = 0; // We only need 10 bits, because length is in range 0:1023
	reg [2:0] uart_byte_counter = 0;
	reg [0:0] uart_header = 1; // Read/Write header byte
	reg [0:0] uart_complex_real = 1; // Read/Write real part of complex number structure
	
	reg [0:0] i_ByteReadyPrev = 0;
	reg [0:0] i_ReadyForOutputPrev = 0;
	
	reg [0:0] o_ByteReadyLocal = 0;
	reg [7:0] o_ByteLocal; // The actual byte to send out
	
	assign o_ByteReady = o_ByteReadyLocal;
	assign o_Byte = o_ByteLocal;
	
	// FFT configuration
	reg [9:0] length = 0; // We only need 10 bits, because length is in range 0:1023
	// Complex number buffer
	reg [31:0] buff_real [1023:0];
	reg [31:0] buff_imag [1023:0];
	// Complex number buffer
	reg [31:0] buff_real_out [1023:0];
	reg [31:0] buff_imag_out [1023:0];
	
	// FFT input wires
	reg [4:0] fft_nfft = 0; // Element count in the FFT buffer
	reg [0:0] fft_inv = 0; // Set high to perform inverse transformation
	reg [0:0] fft_setup = 0; // Do FFT configuration when high
	reg [0:0] fft_start = 0; // Do start FFT transformations when high
	reg [0:0] fft_unload = 0; // Do start FFT data unload when high
	reg [31:0] fft_xn_re; // Xn real value input
	reg [31:0] fft_xn_im; // Xn imaginary value input
	// FFT output wires
	wire fft_rfd; // Ready to load data when high
	wire fft_dv; // Ready to unload the data when high
	wire [31:0] fft_xk_re; // Xk real value output
	wire [31:0] fft_xk_im; // Xk imaginary value output
	wire [9:0] fft_xk_index; // Current Xk index for unloading data
	wire [9:0] fft_xn_index; // Current Xn index for loading data
	
	reg [9:0] fft_xn_indexPrev = 0;
	reg [9:0] fft_xk_indexPrev = 0;
	
	// Connect FFT processor
	xfft_v7_1 xfft (
		.clk(i_Clock),
		.nfft(fft_nfft),
		.nfft_we(fft_setup),
		.start(fft_start),
		.unload(fft_unload),
		.xn_re(fft_xn_re),
		.xn_im(fft_xn_im),
		.fwd_inv(fft_inv),
		.fwd_inv_we(fft_setup),
		.rfd(fft_rfd),
		.xn_index(fft_xn_index),
		.dv(fft_dv),
		.xk_index(fft_xk_index),
		.xk_re(fft_xk_re),
		.xk_im(fft_xk_im)
	);
	
	// State machine - we have multiple states:
	// 0 - UART RX state when we receive data from UART
	// 1 - FFT Load state when we load data into FFT
	// 2 - FFT Unload state when we unload data from FFT
	// 3 - UART TX state when we send data to UART
	reg [1:0] state;
	
	always @(posedge i_Clock) begin
		if (state == 0) begin
			// UART RX state
			if (i_ByteReady != i_ByteReadyPrev) begin
				// Signal has changed
				i_ByteReadyPrev <= i_ByteReady;
				if (i_ByteReady) begin
					// Next byte is ready
					if (uart_header == 1) begin
						// Read header byte
						fft_nfft <= (i_Byte & 8'b00011111);
						fft_inv <= ((i_Byte & 8'b00100000) >> 5);
						length <= (2 << ((i_Byte & 8'b00011111) - 1));
						// Switch state to complex reader
						uart_header <= 0;
						uart_complex_real <= 1;
						temp_counter <= 0;
						uart_byte_counter <= 0;
						// Signal FFT to do internal setup
						fft_setup <= 1;
					end else begin
						// Read complex numbers
						temp_data <= ((32'h00 | i_Byte) << (uart_byte_counter * 8));
						temp_mask <= (~(32'hFF << (uart_byte_counter * 8)));
						if (uart_complex_real == 1) begin
							// Read next real part
							buff_real[temp_counter] <= ((buff_real[temp_counter] & temp_mask) | temp_data);
							if (uart_byte_counter == 3) begin
								uart_complex_real <= 0;
							end
						end else begin
							// Read next imaginary part
							buff_imag[temp_counter] <= ((buff_imag[temp_counter] & temp_mask) | temp_data);
							if (uart_byte_counter == 3) begin
								uart_complex_real <= 1;
								if (temp_counter < length) begin
									// Read next complex numbers
									temp_counter <= temp_counter + 1; 
								end else begin
									// Reached the end of the stream - reset UART reader state
									uart_header <= 1;
									temp_counter <= 0;
									// Move to next state
									state <= state + 1;
								end
							end
						end
						// Increment byte offset (this 2 bit value can count 4 bytes and then overlap back to 0)
						uart_byte_counter <= uart_byte_counter + 1;
					end
				end
			end
		end else if (state == 1) begin
			// FFT Load state
			fft_setup <= 0;
			fft_start <= 1;
			if (fft_rfd) begin
				// When ready to calculate send out data
				fft_xn_re <= buff_real[fft_xn_index];
				fft_xn_im <= buff_imag[fft_xn_index];
				if (fft_xn_index != fft_xn_indexPrev) begin
					fft_xn_indexPrev <= fft_xn_index;
					temp_counter <= temp_counter + 1;
					if (temp_counter == length - 2) begin
						temp_counter <= 0;
						state <= state + 1;
					end
				end
			end
		end else if (state == 2) begin
			// FFT Unload state
			fft_start <= 0;
			fft_unload <= 1;
			if (fft_dv) begin
				buff_real_out[fft_xk_index] <= fft_xk_re;
				buff_imag_out[fft_xk_index] <= fft_xk_im;
				if (fft_xk_index != fft_xk_indexPrev) begin
					fft_xk_indexPrev <= fft_xk_index;
					temp_counter <= temp_counter + 1;
					if (temp_counter == length - 2) begin
						temp_counter <= 0;
						state <= state + 1;
					end
				end
			end
		end else if (state == 3) begin
			// UART TX state
			fft_unload <= 0;
			if (i_ReadyForOutput != i_ReadyForOutputPrev) begin
				i_ReadyForOutputPrev <= i_ReadyForOutput;
				if (i_ReadyForOutput) begin
					if (uart_header == 1) begin
						// Write header byte
						o_ByteLocal <= (((8'h00 | fft_inv) << 5) | fft_nfft);
						
						// Switch state to complex writer
						temp_counter <= 0;
						uart_header <= 0;
						uart_complex_real <= 1;
						uart_byte_counter <= 0;
					end else begin
						// Write complex numbers
						if (uart_complex_real == 1) begin
							// Write real part
							o_ByteLocal <= (buff_real_out[temp_counter] >> (uart_byte_counter * 8));
							if (uart_byte_counter == 3) begin
								uart_complex_real <= 0;
							end
						end else begin
							// Write imaginary part
							o_ByteLocal <= (buff_imag_out[temp_counter] >> (uart_byte_counter * 8));
							if (uart_byte_counter == 3) begin
								uart_complex_real <= 1;
								if (temp_counter < length) begin
									// Read next complex numbers
									temp_counter <= temp_counter + 1; 
								end else begin
									// Reached the end of the stream - reset writer
									uart_header <= 1;
									temp_counter <= 0;
									// Move to first state
									state <= 0;
								end
							end
						end
						uart_byte_counter <= uart_byte_counter + 1;
					end
					// Mark byte ready for reading
					o_ByteReadyLocal <= 1;
				end else begin
					// Clear ready byte
					o_ByteReadyLocal <= 0;
				end
			end
		end
	end
	
endmodule

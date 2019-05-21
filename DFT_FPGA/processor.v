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

	reg [0:0] data_waiting = 1; // Set high when all the complex numbers are written in in_real|in_imag
	reg [0:0] data_processed = 0; // Set high when all the transformed complex numbers are written in out_real|out_image 
	reg [0:0] output_ready = 0; // Set high when i_ReadyForOutput was triggered
	reg [0:0] byte_ready = 0; // Set high when o_ByteReady must be triggered
	reg [7:0] output_byte; // The actual byte to send out
	
	assign o_ByteReady = byte_ready;
	assign o_Byte = output_byte;
	
	// FFT configuration
	reg [31:0] length = 0;
	// Complex number input
	reg [31:0] in_real [1023:0];
	reg [31:0] in_imag [1023:0];
	// Complex number output
	reg [31:0] out_real [1023:0];
	reg [31:0] out_imag [1023:0];
	
	// FFT input wires
	reg [4:0] fft_nfft = 0; // Element count in the FFT buffer
	reg [0:0] fft_inv = 0; // Set high to perform inverse transformation
	reg [0:0] fft_setup = 0; // Do FFT configuration when high
	reg [0:0] fft_start = 0; // Do start FFT transformations when high
	reg [0:0] fft_unload = 0; // Do start FFT data unload when high
	reg [31:0] fft_xn_re; // Xn real value input
	reg [31:0] fft_xn_im; // Xn imaginary value input
	wire [9:0] fft_xn_index; // Current Xn index
	reg [9:0] _fft_xn_index; // The actual register
	assign fft_xn_index = _fft_xn_index;
	// FFT output wires
	wire fft_rfd; // Ready to load data when high
	wire fft_dv; // Ready to unload the data when high
	wire [31:0] fft_xk_re; // Xk real value input
	wire [31:0] fft_xk_im; // Xk imaginary value input
	wire [9:0] fft_xk_index; // Current Xk index
	
	wand read_data;
	assign read_data = data_waiting;
	assign read_data = i_ByteReady;
	
	// Start FFT calculation when we've received all the data from UART and FFT is ready for data
	wand calculate_fft;
	assign calculate_fft = data_loaded;
	assign calculate_fft = fft_rfd;
	
	// Do actual output when output is ready and all the data has been processed
	wand return_data;
	assign return_data = output_ready;
	assign return_data = data_processed;
	
	reg [31:0] fft_out_counter = 0;
	reg [31:0] fft_in_counter = 0;
	
	// UART RX processing
	reg [31:0] load_temp = 0;
	reg [31:0] load_mask = 0;
	reg [31:0] load_counter = 0;
	reg [2:0] load_byte_counter = 0;
	reg [0:0] load_header = 1; // Read/Write header byte
	reg [0:0] load_complex_real = 1; // Read/Write real part of complex number structure
	always @(posedge read_data) begin
		if (load_header == 1) begin
			// Read header byte
			fft_nfft = (i_Byte & 8'b00001111);
			fft_inv = ((i_Byte & 8'b00010000) >> 5);
			length = (2 << (fft_nfft - 1));
			
			// Switch state to complex reader
			load_counter = 0;
			fft_in_counter = 0;
			fft_out_counter = 0;
			load_header = 0;
			load_complex_real = 1;
			
			// Signal FFT to do internal setup
			fft_setup = 1;
		end else begin
			// Read complex numbers
			load_temp = i_Byte;
			load_temp = (load_temp << load_byte_counter);
			load_mask = (~(32'hFF << load_byte_counter));
			if (load_complex_real == 1) begin
				// Read next real part
				in_real[load_counter] = ((in_real[load_counter] & load_mask) | load_temp);
				if (load_byte_counter == 3) begin
					load_complex_real = 0;
				end
			end else begin
				// Read next imaginary part
				in_imag[load_counter] = ((in_imag[load_counter] & load_mask) | load_temp);
				if (load_byte_counter == 3) begin
					if (load_counter < length) begin
						// Read next complex numbers
						load_counter = load_counter + 1; 
					end else begin
						// Reached the end of the stream - reset reader state
						load_header = 1;
						data_loaded = 1;
					end
				end
			end
			
			// Increment byte offset
			load_byte_counter = load_byte_counter + 1;
			
			// Signal FFT to stop setup
			fft_setup = 0;
		end
	end
	
	// When ready to calculate send out data
	always @(posedge calculate_fft) begin
		fft_xn_re = in_real[fft_in_counter];
		fft_xn_im = in_imag[fft_in_counter];
		_fft_xn_index = fft_in_counter;
		fft_in_counter = fft_in_counter + 1;
	end
	
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
		.xk_im(ffT_xk_im)
	);

	// Receive data from FFT
	always @(posedge fft_dv) begin
		out_real[fft_xk_index] = fft_xn_re;
		out_imag[fft_xk_index] = fft_xk_im;
		fft_out_counter = fft_out_counter + 1;
		if (fft_out_counter == length) begin
			data_loaded = 0;
			data_processed = 1;
		end
	end
	
	// Store output-ready state for later use and clear byte_ready as it's probably not
	always @(posedge i_ReadyForOutput) begin
		output_ready = 1;
		byte_ready = 0;
	end
	
	// Send data to UART TX
	reg [31:0] write_temp = 0;
	reg [31:0] write_mask = 0;
	reg [31:0] write_counter = 0;
	reg [2:0] write_byte_counter = 0;
	reg [0:0] write_header = 1; // Read/Write header byte
	reg [0:0] write_complex_real = 1; // Read/Write real part of complex number structure
	always @(posedge return_data) begin
		if (write_header == 1) begin
			// Write header byte
			output_byte = 0; 
			output_byte = output_byte | fft_inv;
			output_byte = output_byte << 5;
			output_byte = ((output_byte & 8'b00010000) | fft_nfft);
			
			// Switch state to complex writer
			write_counter = 0;
			write_header = 0;
			write_complex_real = 1;
		end else begin
			// Write complex numbers
			if (write_complex_real == 1) begin
				// Read real part, shift and mask it to 8 bit byte
				write_mask = (8'hFF << write_byte_counter);
				write_temp = (out_real[write_counter] & write_mask);
				write_temp = (write_temp >> write_byte_counter);
				output_byte = write_temp;
				if (write_byte_counter == 3) begin
					write_complex_real = 0;
				end
			end else begin
				// Read imaginary part, shift and mask it to 8 bit byte
				write_mask = (8'hFF << write_byte_counter);
				write_temp = (out_imag[write_counter] & write_mask);
				write_temp = (write_temp >> write_byte_counter);
				output_byte = write_temp;
				if (write_byte_counter == 3) begin
					write_complex_real = 1;
					if (write_counter < length) begin
						// Read next complex numbers
						write_counter = write_counter + 1; 
					end else begin
						// Reached the end of the stream - reset writer
						write_header = 1;
						data_processed = 0;
					end
				end
			end

			write_byte_counter = write_byte_counter + 1;
		end
		
		// Mark byte as ready to send
		byte_ready = 1;
		// Drain output_ready and wait for it to be updated from UART TX module
		output_ready = 0;
	end
	
	
endmodule

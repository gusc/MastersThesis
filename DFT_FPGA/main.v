`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: LU
// Engineer: Gusts Kaksis
// 
// Create Date:    13:12:28 05/19/2019 
// Design Name: 
// Module Name:    main 
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
module main(
		input CLK_50MHZ,
		// UART
		input UART_RX,
		output UART_TX,
		// DEBUGGING OUTPUT
		output DBG_LED
   );

	assign DBG_LED = UART_RX;

	wire[7:0] inputByte;
	wire inputReady;
	wire[7:0] outputByte;
	wire outputReady;
	//wire sending;
	wire readyForMore;
	
	// Receive data from UART
	uart_rx #(
		.CLKS_PER_BIT(12)
	) uart_in (
		.i_Clock(CLK_50MHZ),
		.i_Rx_Serial(UART_RX),
		.o_Rx_DV(inputReady),
		.o_Rx_Byte(inputByte)
	);
	
	// Process data
	processor proc (
		.i_Clock(CLK_50MHZ),
		.i_ByteReady(inputReady),
		.i_Byte(inputByte),
		.i_ReadyForOutput(readyForMore),
		.o_ByteReady(outputReady),
		.o_Byte(outputByte)
	);

	// Send data to UART
	uart_tx #(
		.CLKS_PER_BIT(12)
	) uart_out (
		.i_Clock(CLK_50MHZ),
		.i_Tx_DV(outputReady),
		.i_Tx_Byte(outputByte), 
		//.o_Tx_Active(sending),
		.o_Tx_Serial(UART_TX),
		.o_Tx_Done(readyForMore)
	);
	
endmodule

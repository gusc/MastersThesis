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
		//input CLK_50MHZ,
		// UART
		input UART_RX,
		output UART_TX,
		// DEBUGGING OUTPUT
		output DBG_LED
    );

	assign DBG_LED = UART_RX;
	assign UART_TX = UART_RX;
	
endmodule

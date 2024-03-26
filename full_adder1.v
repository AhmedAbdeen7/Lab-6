`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/26/2024 11:14:46 AM
// Design Name: 
// Module Name: full_adder1
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module full_adder1(input A, B, cin, output sum, cout);
assign sum = A ^ B ^ cin; //simplifed version of boolean expression
assign cout = (A &B) | (B & cin) | (A & cin);
endmodule

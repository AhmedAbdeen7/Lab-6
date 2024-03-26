`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/26/2024 11:23:37 AM
// Design Name: 
// Module Name: rca_4
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


module rca_4(input [3:0] A, [3:0] B, Cin, output [3:0] sum, cout);
wire w1, w2, w3;
full_adder1 FA1(.A({A[0]}), .B({B[0]}), .cin(Cin), .sum({sum[0]}), .cout(w1));
full_adder1 FA2(.A({A[1]}), .B({B[1]}), .cin(w1), .sum({sum[1]}), .cout(w2));
full_adder1 FA3(.A({A[2]}), .B({B[2]}), .cin(w2), .sum({sum[2]}), .cout(w3));
full_adder1 FA4(.A({A[3]}), .B({B[3]}), .cin(w3), .sum({sum[3]}), .cout(cout));
endmodule

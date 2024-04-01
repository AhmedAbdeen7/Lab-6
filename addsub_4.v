`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/01/2024 11:05:15 PM
// Design Name: 
// Module Name: addsub_4
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


module addsub_4(
    input [3:0] A,
    input [3:0] B,
    input sub,
    output cout,
    output [3:0]s
    );
    
    rca_4 rc (.A({A[0]^sub, A[1]^sub, A[2]^sub, A[3]^sub}), .B(B[3:0]), .Cin(sub), .sum(s), .cout(cout));
    
    
endmodule

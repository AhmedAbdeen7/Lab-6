`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/26/2024 12:13:58 PM
// Design Name: 
// Module Name: rca_8
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


module rca_8(input [7:0] A, [7:0] B, Cin, output [7:0] sum, cout);

wire[7:0] x;
wire w1, w2;
assign x[0] = w2;
genvar i;
generate
full_adder1 F1(.A(A[0]),.B(B[0]),.cin(Cin),.sum(sum[0]),.cout(w2));


//assign w2 = x[0];
for (i=1; i<=7; i=i+1) begin: mygenloop
 full_adder1 F(.A(A[i]),.B(B[i]),.cin(x[i-1]),.sum(sum[i]),.cout(x[i]));
end
endgenerate
assign cout = x[7];
endmodule


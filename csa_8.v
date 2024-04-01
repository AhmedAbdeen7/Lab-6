`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/01/2024 10:31:31 PM
// Design Name: 
// Module Name: csa_8
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


module csa_8(input [7:0] A, input [7:0] B, input Cin, output reg [7:0] sum, output reg cout);
    wire select;
    wire  cout1;
    wire cout2;
    wire  [3:0] sum1;
    wire  [3:0] sum2;
    wire  [3:0] sum3;

    rca_4 r1(.A(A[3:0]), .B(B[3:0]), .Cin(Cin), .sum(sum1), .cout(select));
    rca_4 r2(.A({A[7], A[6], A[5], A[4]}), .B({B[7], B[6], B[5], B[4]}), .Cin(0), .sum(sum2), .cout(cout1));
    rca_4 r3(.A({A[7], A[6], A[5], A[4]}), .B({B[7], B[6], B[5], B[4]}), .Cin(1), .sum(sum3), .cout(cout2));
 always @(*) begin
        case(select)
            1'b0: begin
                cout = cout1;
                sum[3:0] = sum1;
                sum[7:4] = sum2;
            end
            1'b1: begin
                cout = cout2;
                sum[3:0] = sum1;
                sum[7:4] = sum3;
            end
            default: begin
                cout = 0;
                sum[3:0] = 4'd0;
                sum[7:4] = 4'd0;
            end
        endcase
    end
endmodule


`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/26/2024 11:05:57 AM
// Design Name: 
// Module Name: csa_8_sim
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


module csa_8_testbench();
reg [7:0] B;
reg [7:0] A;
reg cin;
wire [7:0] sum;
wire cout;
wire [7:0]ref_s;
wire ref_cout;
wire err;

csa_8 M(.A(A),.B(B),.Cin(cin),.sum(sum),.cout(cout));

assign {ref_cout,ref_s}=A+B+cin;

assign err=(ref_s !=sum) || (ref_cout!=cout);

integer i;
initial begin
    for(i=0;i<131072;i=i+1) begin
        {A,B,cin} =i; #10    
        if(err==1)
            $display("Input combination %d failed.", i);
    end
end
endmodule

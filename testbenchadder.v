`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/26/2024 10:34:09 AM
// Design Name: 
// Module Name: testbenchadder
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


module testbenchadder();
reg x,y,cin;
wire s,cout;
wire ref_s, ref_cout, err;
full_adder dut(.a(x),.b(y),.cin(cin),.sum(s),.cout(cout));
assign {ref_cout, ref_s} = x + y + cin;
assign err = (ref_s != s) || (ref_cout != cout);
integer i;
initial begin
for ( i = 0; i < 8; i = i + 1 ) begin
 {x, y, cin} = i; #10
 // every 10 ns set x, y, cin to the binary rep. of i
 if (err == 1)
 $display("Input combination %d failed.", i);
end
end
endmodule
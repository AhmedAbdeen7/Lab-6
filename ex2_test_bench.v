`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/26/2024 11:33:50 AM
// Design Name: 
// Module Name: ex2_test_bench
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


module ex2_test_bench();
reg [3:0] x; 
reg [3:0] y;
reg cin;
wire [3:0]s;
wire cout;
wire [3:0]ref_s,
ref_cout, err;
// instantiate device under test
rca_4 dut(.A(x),.B(y),.Cin(cin),.sum(s),.cout(cout));

// Golden Model
assign {ref_cout, ref_s} = x + y + cin;
// The Checker
assign err = (ref_s != s) || (ref_cout != cout);
integer i;
initial begin
for ( i = 0; i < 512; i = i + 1 ) begin
 {x, y, cin} = i; #10
 // every 10 ns set x, y, cin to the binary rep. of i
 if (err == 1)
 $display("Input combination %d failed.", i);
end
end
endmodule

`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.06.2026 20:27:36
// Design Name: 
// Module Name: register_bank
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


module register_bank(rdData1,rdData2,wrData,SR1,SR2,DR,write,reset,clk);
input clk,write,reset;
input[4:0]SR1,SR2,DR;
input[31:0]wrData;
output[31:0]rdData1,rdData2;
integer k;
reg[31:0]regfile[31:0];
assign rdData1=regfile[SR1];
assign rdData2=regfile[SR2];
always@(posedge clk)
begin
if(reset)
begin
for(k=0;k<32;k=k+1)
begin
regfile[k]<=0;
end
end
else
begin
if(write)
regfile[DR]<=wrData;
end
end
endmodule

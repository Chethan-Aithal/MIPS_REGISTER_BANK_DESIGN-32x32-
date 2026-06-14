`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.06.2026 20:37:24
// Design Name: 
// Module Name: Register_bank_tb
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
module Register_bank_tb;
reg clk;
reg write;
reg reset;
reg [4:0] SR1, SR2, DR;
reg [31:0] wrData;
wire [31:0] rdData1, rdData2;
    register_bank dut (
        .rdData1(rdData1),
        .rdData2(rdData2),
        .wrData(wrData),
        .SR1(SR1),
        .SR2(SR2),
        .DR(DR),
        .write(write),
        .reset(reset),
        .clk(clk)
    );
    initial 
begin
        clk = 0;
        forever #5 clk = ~clk;
    end
initial begin
        reset = 1;
        write = 0;
        #10;

        reset = 0;

        // Write 100 to R5
        write  = 1;
        DR     = 5;
        wrData = 32'd100;
        #10;

        // Write 200 to R10
        DR     = 10;
        wrData = 32'd200;
        #10;

        write = 0;

        // Read R5 and R10
        SR1 = 5;
        SR2 = 10;
        #10;

        // Read R10 and R5
        SR1 = 10;
        SR2 = 5;
        #10;
$finish;
end
endmodule


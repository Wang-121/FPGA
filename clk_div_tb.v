`timescale 1ns/1ps
module clk_div_tb ();
//input
	reg clk_100MHz;
	reg rst;
//output
    wire clk;
    wire clk_3Hz;
//例化模块
clk_div inst_clk_div(
    .clk_100MHz(clk_100MHz),
    .rst(rst),
    .clk(clk),
    .clk_3Hz(clk_3Hz)
);
//参数定义
   parameter CYCLE    = 10;
   parameter RST_TIME = 3 ;
	
//生成时钟信号
initial begin
    clk_100MHz = 0;
    forever
    #(CYCLE/2)
    clk_100MHz=~clk_100MHz;
end
//生成复位信号
initial begin
    rst = 0;
    #2;
    rst= 1;
    #(CYCLE*RST_TIME);
    rst = 0;
end  
    
endmodule
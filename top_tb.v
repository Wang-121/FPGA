`timescale 1ns/1ps
module top_tb ();
//input
reg  clk_100MHz;
reg  rst;
//output
wire [3:0] seg_sel;
wire [6:0] segment;
//参数定义
parameter CYCLE =10 ;
//模块例化
top inst_top(
    .clk_100MHz(clk_100MHz),
    .rst(rst),
    .seg_sel(seg_sel),
    .segment(segment)
);
//时钟信号生成
initial begin
    clk_100MHz=1'b0;
    forever begin
    #(CYCLE/2) clk_100MHz=~clk_100MHz;
    end
end
//复位信号生成
initial begin
    rst = 1'b1;
    #3  rst=1'b0;  
end
    
endmodule
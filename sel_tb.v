`timescale 1ns/1ps
module sel_tb ();
//input
reg  clk;
reg  rst;
//output
wire [3:0] sel;
//参数定义
parameter CYCLE    = 10;  //100M->10ns
parameter RST_TIME = 90;
//模块例化
sel inst_sel(
    .clk(clk),
    .rst(rst),
    .sel(sel)
);
//时钟信号的生成
initial begin
    clk=1'b0;
    forever begin
        #(CYCLE/2)clk=~clk;
    end
end
//复位信号的生成
initial begin
    rst=1'b1;
    #3 rst=1'b0;
end
//仿真时间的控制
initial begin
    #2000 $finish;
end
    
endmodule
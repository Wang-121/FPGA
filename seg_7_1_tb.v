`timescale 1ns/1ps
module seg_7_1_tb ();
//input
reg  [3:0] sel;
//output
wire [6:0] segment;
//例化模块
seg_7_1 inst_seg_7_1(
    .sel(sel),
    .segment(segment)
);
//数据信号激励
initial begin
   sel=4'b0000;
    #10 sel=4'b0001;
    #10 sel=4'b0010;
    #10 sel=4'b0011;
    #10 sel=4'b0100;
    #10 sel=4'b0101;
    #10 sel=4'b0110;
    #10 sel=4'b0111;
    #10 sel=4'b1000;
    #10 sel={$random}%16;
    #10 sel={$random}%16;
end
//仿真时间控制
initial begin
    #200 $finish;
end
//信号监控
initial begin
    $monitor($time," sel=%d, segment=%b, ",sel,segment);
end
   
endmodule
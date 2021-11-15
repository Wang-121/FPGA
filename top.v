module	 top  ( 
// 输入端口         
    input				clk_100MHz,       //系统时钟信号
    input				rst,       //系统复位信号
// 输出端口         
    output	 [3:0]	    seg_sel,   //数码管位选信号
    output	 [6:0]	    segment    //数码管段选信号
);
                        
// 模块内部信号连线        
wire            w_clk;                        
wire            w_clk_3Hz; 
wire [3:0]      w_sel;                 
// 模块例化          
seg_7_1    inst_seg_7_1 (
    .segment(segment),
    .sel(w_sel)
); 

clk_div inst_clk_div (
    .clk_100MHz(clk_100MHz),
    .rst(rst),
    .clk (w_clk),
    .clk_3Hz (w_clk_3Hz)
);

sel  inst_sel(
    .clk(w_clk),
    .rst(rst),
    .sel(w_sel)
);

seg_sel  inst_seg_sel (
    .sel(w_sel),
    .seg_sel(seg_sel)
);
                       
endmodule
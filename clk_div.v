module	 clk_div  ( 
// 输入端口         
    input				clk_100MHz,      //系统时钟信号
    input				rst,      //系统复位信号
    
// 输出端口         
    output				clk,
    output				clk_3Hz
    
);
                                    
// 其他信号定义         
    reg     [24:0]       cnt;
                                     
// 计数       
 always @(posedge clk_100MHz or posedge rst) begin 
     if (rst ) begin  
          cnt<=25'b0;         
     end 
     else  begin 
          cnt<=cnt+1'b1;               
     end 
end 
                       
 //分频时钟
 assign     clk         =   cnt[24];
 assign     clk_3Hz     =   cnt[24];
endmodule
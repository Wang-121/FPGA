module	 sel  ( 
// 输入端口         
    input				clk,      //刷新频率的时钟3Hz，355ms
    input				rst,      //系统复位信号
// 输出端口         
    output	reg [ 3:0 ]	sel
);
                        
// 时序逻辑         
 always @(posedge clk or posedge rst) begin 
     if (rst ) begin  
           sel<=4'b0000;            
     end 
     else begin
        if(sel==4'b1000)
           sel<=4'b0001;
        else
           sel<=sel+1'b1;       
     end 
end                
                       
endmodule
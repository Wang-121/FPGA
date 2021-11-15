module	 seg_sel  ( 
// 输入端口         
    input	    [3:0]		sel,      //位选控制输入信号
// 输出端口         
    output reg 	[3:0]		seg_sel   //位选控制输出信号
);
                                        
// 组合逻辑          
    always	@ (*)  begin 
           case (sel)
               4'b0001: seg_sel=4'b1110;
               4'b0010: seg_sel=4'b1101;
               4'b0011: seg_sel=4'b1011;
               4'b0100: seg_sel=4'b0111;
               4'b0101: seg_sel=4'b0111;
               4'b0110: seg_sel=4'b1011;
               4'b0111: seg_sel=4'b1101;
               4'b1000: seg_sel=4'b1110;
             default: seg_sel=4'b1110;
           endcase          
    end
endmodule
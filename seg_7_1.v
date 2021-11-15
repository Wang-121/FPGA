module	 seg_7_1  ( 
// 输入端口         
    input	    [3:0]	sel,
// 输出端口         
    output	reg [6:0]	segment
);
                        
//数字参数定义
    parameter      DATA_0 =7'b0011_100;        //a-g,显示上层方块
    parameter      DATA_1 =7'b1100_010;        //a-g,显示下层方块
          
//7段译码电路
always @(*) begin
    case (sel)
        4'd1: segment=DATA_0;
        4'd2: segment=DATA_0;
        4'd3: segment=DATA_0;
        4'd4: segment=DATA_0;
        4'd5: segment=DATA_1;
        4'd6: segment=DATA_1;
        4'd7: segment=DATA_1;
        4'd8: segment=DATA_1;
        default: segment=DATA_0;
    endcase
end
                  
endmodule
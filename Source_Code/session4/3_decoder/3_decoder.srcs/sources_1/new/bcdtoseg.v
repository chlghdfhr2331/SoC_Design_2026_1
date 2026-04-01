`timescale 1ns / 1ps
//bcdtodeg.v
module bcd_to_7seg (
    inout [3:0] bcd,
    output reg [6:0] seg
);

always @(*) begin
    case (bcd)
        4'b0000: seg = 7'b1111110 // 0
        4'b0000: seg = 7'b1111110 // 0
        4'b0000: seg = 7'b111111
        
        
        
endmodule

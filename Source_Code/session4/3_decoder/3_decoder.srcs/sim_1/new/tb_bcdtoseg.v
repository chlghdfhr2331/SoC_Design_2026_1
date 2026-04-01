`timescale 1ns / 1ps
//tb_bedtoseg.v
module tb_bcd_to_7seg;

reg [3:0] bcd;
wire[6:0] seg;

bad_to_7seg uut (
    .bcd(bcd),
    .seg(seg)
);

initial begin 
    $monitor("Time=%0t | BCD Input=%b | Seven Segment Output=%b", $time, bcd, seg);
    
    bcd = 4'b0000; #10;
    bcd = 4'b0001; #10;
    bcd = 4'b0010; #10;
    bcd = 4'b0011; #10;
    bcd = 4'b0100; #10;
    bcd = 4'b0101; #10;
    bcd = 4'b0110; #10;
    bcd = 4'b0111; #10;
    bcd = 4'b1000; #10;
    bcd = 4'b1001; #10;
    
    $finish;
    
end

endmodule

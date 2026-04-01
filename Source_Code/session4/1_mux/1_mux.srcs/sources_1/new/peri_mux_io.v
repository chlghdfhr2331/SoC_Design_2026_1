`timescale 1ns / 1ps
//peri_mux_io.v
module gpio_mux (
    input wire [1:0] sel,         
    input wire tx0,
    input wire rx0,
    input wire pwm1,
    input wire other_signal,
    output reg gpio_pin
);

    always @(*) begin
        case (sel)
            2'b00: gpio_pin = tx0;
            2'b01: gpio_pin = rx0;
            2'b10: gpio_pin = pw0;
            2'b11: gpio_pin = other_signal;
            default: gpio_pin = 1'bz;
        endcase
    end
    
endmodule
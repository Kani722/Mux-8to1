module mux4to1(
    input [3:0] DATA_IN,  // 4-bit input data
    input [1:0] SELECT,   // 2-bit select signal
    output reg DATA_OUT   // Output data
);
    
    always @(*) begin
        case(SELECT)
            2'b00: DATA_OUT = DATA_IN[0];
            2'b01: DATA_OUT = DATA_IN[1];
            2'b10: DATA_OUT = DATA_IN[2];
            2'b11: DATA_OUT = DATA_IN[3];
            default: DATA_OUT = 1'b0;  // Default case for safety
        endcase
    end

endmodule

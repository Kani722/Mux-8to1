module mux2to1(
    input [1:0] DATA_IN,  // 2-bit input data
    input SELECT,         // Select signal
    output reg DATA_OUT   // Output data
);
    
    always @(*) begin
        case(SELECT)
            1'b0: DATA_OUT = DATA_IN[0];
            1'b1: DATA_OUT = DATA_IN[1];
            default: DATA_OUT = 1'b0;  // Default case for safety
        endcase
    end

endmodule

//====================================================
// 16 x 8 ROM
// 16 memory locations
// Each location stores 8 bits
//====================================================

module rom_16x8 (
    input  wire [3:0] address,
    output reg  [7:0] data
);

always @(*) begin
    case (address)
        4'h0: data = 8'h10;
        4'h1: data = 8'h21;
        4'h2: data = 8'h32;
        4'h3: data = 8'h43;
        4'h4: data = 8'h54;
        4'h5: data = 8'h65;
        4'h6: data = 8'h76;
        4'h7: data = 8'h87;
        4'h8: data = 8'h98;
        4'h9: data = 8'hA9;
        4'hA: data = 8'hBA;
        4'hB: data = 8'hCB;
        4'hC: data = 8'hDC;
        4'hD: data = 8'hED;
        4'hE: data = 8'hFE;
        4'hF: data = 8'hFF;

        default: data = 8'h00;
    endcase
end

endmodule
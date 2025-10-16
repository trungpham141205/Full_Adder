// =====================================
// Full Adder - RTL Design
// Author: Pham Quoc Trung
// Date: 2025-10-16
// =====================================

module full_adder(
    input wire a,
    input wire b,
    input wire cin,
    output wire sum,
    output wire cout
);

    assign sum = a ^ b ^ cin;
    assign cout = (a & b) | ((a ^ b) & cin);

endmodule
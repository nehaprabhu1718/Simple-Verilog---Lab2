//implement your 32-bit ALU
module alu32(out, overflow, zero, negative, A, B, control);
    output [31:0] out;
    output        overflow, zero, negative;
    input  [31:0] A, B;
    input   [2:0] control;

    wire cout1, cout2, cout3, cout4, cout5, cout6, cout7, cout8, cout9, cout10, cout11,
    cout12, cout13, cout14, cout15, cout16, cout17, cout18, cout19, cout20, cout21, cout22,
    cout23, cout24, cout25, cout26, cout27, cout28, cout29, cout30, cout31, cout32;

    `define ALU_ADD    3'h2
    `define ALU_SUB    3'h3
    `define ALU_AND    3'h4
    `define ALU_OR     3'h5
    `define ALU_NOR    3'h6
    `define ALU_XOR    3'h7

    alu1 a1(out[0], cout1, A[0], B[0], control[0], control);
    alu1 a2(out[1], cout2, A[1], B[1], cout2, control);
    alu1 a3(out[2], cout3, A[2], B[2], cout3, control);
    alu1 a4(out[3], cout4, A[3], B[3], cout4, control);
    alu1 a5(out[4], cout5, A[4], B[4], cout5, control);
    alu1 a6(out[5], cout6, A[5], B[5], cout6, control);
    alu1 a7(out[6], cout7, A[6], B[6], cout7, control);
    alu1 a8(out[7], cout8, A[7], B[7], cout8, control);
    alu1 a9(out[8], cout9, A[8], B[8], cout9, control);
    alu1 a10(out[9], cout10, A[9], B[9], cout10, control);
    alu1 a11(out[10], cout11, A[10], B[10], cout11, control);
    alu1 a12(out[11], cout12, A[11], B[11], cout12, control);
    alu1 a13(out[12], cout13, A[12], B[12], cout13, control);
    alu1 a14(out[13], cout14, A[13], B[13], cout14, control);
    alu1 a15(out[14], cout15, A[14], B[14], cout15, control);
    alu1 a16(out[15], cout16, A[15], B[15], cout16, control);
    alu1 a17(out[16], cout17, A[16], B[16], cout17, control);
    alu1 a18(out[17], cout18, A[17], B[17], cout18, control);
    alu1 a19(out[18], cout19, A[18], B[18], cout19, control);
    alu1 a20(out[19], cout20, A[19], B[19], cout20, control);
    alu1 a21(out[20], cout21, A[20], B[20], cout21, control);
    alu1 a22(out[21], cout22, A[21], B[21], cout22, control);
    alu1 a23(out[22], cout23, A[22], B[22], cout23, control);
    alu1 a24(out[23], cout24, A[23], B[23], cout24, control);
    alu1 a25(out[24], cout25, A[24], B[24], cout25, control);
    alu1 a26(out[25], cout26, A[25], B[25], cout26, control);
    alu1 a27(out[26], cout27, A[26], B[26], cout27, control);
    alu1 a28(out[27], cout28, A[27], B[27], cout28, control);
    alu1 a29(out[28], cout29, A[28], B[28], cout29, control);
    alu1 a30(out[29], cout30, A[29], B[29], cout30, control);
    alu1 a31(out[30], cout31, A[30], B[30], cout31, control);
    alu1 a32(out[31], cout32, A[31], B[31], cout32, control);

    assign negative = out[31];
    xor x1(overflow, cout31, cout30);
    or is_zero(zero, out[31:0]);





endmodule // alu32

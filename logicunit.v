// 00 -> AND, 01 -> OR, 10 -> NOR, 11 -> XOR
module logicunit(out, A, B, control);
    output      out;
    input       A, B;
    input [1:0] control;

    wire w1, w2, w3, w4;
    and a1(w1, A, B);
    or o1(w2, A, B);
    nor n1(w3, A, B);
    xor x1(w4, A, B);
    mux4 m2(out, w1, w2, w3, w4, control);




endmodule // logicunit

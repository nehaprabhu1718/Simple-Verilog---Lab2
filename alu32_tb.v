//implement a test bench for your 32-bit ALU
module alu32_test;
    reg [31:0] A = 0, B = 0;
    reg [2:0] control = 0;

    initial begin
        $dumpfile("alu32.vcd");
        $dumpvars(0, alu32_test);

        # 10 A = 8; B = 4; control = 3'h2; // try adding 8 and 4
        # 10 A = 2; B = 5; control = 3'h3; // try subtracting 5 from 2

        // add more test cases here!
        # 10 A = 9; B = 2; control = 3'h2; // try adding 9 and 2
        # 10 A = 0; B = 1; control = 3'h5; // OR
        # 10 A = 1; B = 1; control = 3'h4; // AND


        # 10 $finish;
    end

    wire [31:0] out;
    wire overflow, zero, negative;
    alu32 a(out, overflow, zero, negative, A, B, control);
endmodule // alu32_test

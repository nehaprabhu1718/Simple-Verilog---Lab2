// a code generator for the ALU chain in the 32-bit ALU
// look at example_generator.cpp for inspiration

// make generator
// ./generator

#include <cstdio>
using std::printf;

int
main() {
    int width = 32;
    for (int i = 2 ; i < width ; i ++) {
        printf("    or o%d(chain[%d], in[%d], chain[%d]);\n", i, i, i, i-1);
    }
}

## a code generator for the ALU chain in the 32-bit ALU
## look at example_generator.py for inspiration
##
## python generator.py

from __future__ import print_function

width = 32
for i in range(2, width):
    print("    or o{0}(chain[{0}], in[{0}], chain[{1}]);".format(i, i - 1))

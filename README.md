
# MISRA Cppcheck VS IKOS

This is the comparison test between Cppcheck and IKOS.
It did it after finding IKOS, an open-source tool to static code analysis from NASA. 
That sounds promising, right?

Please checkout this link for more information from IKOS:
https://github.com/NASA-SW-VnV/ikos/blob/master/analyzer/README.md

## Quick Start

First of all, build and/or install Cppcheck and IKOS, which are merged into 
  this project as sub-modules.

Then, compile the example with the following commands:

```bash
cppcheck-misra-script/misra_check.sh --source example.c --html
```

```bash
./ikos_check.sh
```

See the reult for yourself.


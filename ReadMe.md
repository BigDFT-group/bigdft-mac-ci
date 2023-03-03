# BigDFT Mac CI

This project uses github actions to verify we can compile and run BigDFT
on Mac platforms.

It includes two rc files:
  - `mac_gcc.rc`
  - `macc_clang.rc`
which choose between clang and gcc for the C/C++ compilers.

The `install.sh` script does the setup using homebrew, and then compiles. It
takes one argument, either `gcc` or `clang`. Likewise, the `test.sh` script
accepts either `gcc` or `clang` as an argument.

Anyone wishing to install it on their own computer might read the `install.sh`
script and perform the same commands.


#!/bin/bash

OPTPASSES="obfstrings"

if [ $# -le 0 ]; then

	echo "Please specify an input file (C/C++) to produce."

	exit 1

fi

echo "Running WareVisor tests for file <"$1">..."

INPUTFILEPATH="./src/"$1

if [ ! -f $INPUTFILEPATH ]; then

	echo "File <"$1"> not found on directory: "$PWD"/src/"$1

	exit 1

fi

IROUTPUTPATH="./binaries/ir-output.ll"

clang++ -S -emit-llvm -O0 $INPUTFILEPATH -o $IROUTPUTPATH 

ERRCODE=$?
if [ $ERRCODE -ne 0 ]; then

	echo "Compilation failed [Clang] with status code: "$ERRCODE

	exit 1

fi

LIBBUILDDIR="/home/cbsahmet/Dev/llvm/llvm-project/build"

ninja -C $LIBBUILDDIR UX-Obfuscator

ERRCODE=$?
if [ $ERRCODE -ne 0 ]; then

	echo "Build failed [Ninja] with status code: "$ERRCODE

	exit 1

fi

LIBPATH=$LIBBUILDDIR"/lib/UX-Obfuscator.so"

OBFIROUTPUTPATH="./binaries/ir-out-obf.ll"

opt --load-pass-plugin=$LIBPATH $IROUTPUTPATH --passes=$OPTPASSES -S -o $OBFIROUTPUTPATH

ERRCODE=$?
if [ $ERRCODE -ne 0 ]; then

	echo "Running passes failed [Opt] with status code: "$ERRCODE

	exit 1

fi

echo "Passes are applied successfully."
echo "Now resultant IR is being compiled to target assembly and machine code..."

BINOUTPUTPATH="./binaries/bin-out-obf.bin"

clang++ -O2 $OBFIROUTPUTPATH -o $BINOUTPUTPATH

ERRCODE=$?
if [ $ERRCODE -ne 0 ]; then

	echo "Compilation of obfuscated IR failed [Clang] with status code: "$ERRCODE

	exit 1

fi

objdump -d $BINOUTPUTPATH > "./binaries/bin-out-obf.dump"

ERRCODE=$?
if [ $ERRCODE -ne 0 ]; then

	echo "Disassembling output binary failed (Objdump) with status code: "$?

	exit 1

fi

echo "All outputs are generated successfully."

exit 0

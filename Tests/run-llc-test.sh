#!/bin/bash

LLCPASSES="wv-mir-pass"

if [ $# -le 0 ]; then

	echo "Please specify an input file (C/C++) to produce."

	exit 1

fi

echo "Running WareVisor (LLC) tests on file <"$1">..."

(exec ./run-tests.sh $1)

OBFIRINPUTPATH="./binaries/ir-out-obf.ll"

LIBBUILDDIR="/home/cbsahmet/Dev/llvm/llvm-project/build"

LIBPATH=$LIBBUILDDIR"/lib/UX-Obfuscator.so"

OBFMIROUTPUTPATH="./binaries/mir-out-obf.mir"

llc -mtriple=x86_64-pc-windows-msvc --stop-after="x86-isel" $OBFIRINPUTPATH -o $OBFMIROUTPUTPATH

ERRCODE=$?
if [ $ERRCODE -ne 0 ]; then

	echo "Compilation until x86-isel failed [LLC] with status code: "$ERRCODE

	exit 1

fi

OBFMIRNEXTOUTPUTPATH="./binaries/mir-out-obf-next.mir"

llc -mtriple=x86_64-pc-windows-msvc --load=$LIBPATH --run-pass=$LLCPASSES $OBFMIROUTPUTPATH -o $OBFMIRNEXTOUTPUTPATH

ERRCODE=$?
if [ $ERRCODE -ne 0 ]; then

	echo "Running passes after x86-isel failed [LLC] with status code: "$ERRCODE
	
	exit 1

fi

OBFFINALASMOUTPUTPATH="./binaries/final-asm-out-obf.asm"
OBFFINALOBJOUTPUTPATH="./binaries/final-obj-out-obf.o"

llc -mtriple=x86_64-pc-windows-msvc --start-after="x86-isel" --x86-asm-syntax=intel $OBFMIRNEXTOUTPUTPATH -o $OBFFINALASMOUTPUTPATH
llc -mtriple=x86_64-pc-windows-msvc --start-after="x86-isel" --filetype=obj $OBFMIRNEXTOUTPUTPATH -o $OBFFINALOBJOUTPUTPATH

echo "LLC tests are performed successfully."

exit 0

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

llc -mtriple=x86_64 --stop-after="x86-isel" $OBFIRINPUTPATH -o $OBFMIROUTPUTPATH

llc -mtriple=x86_64 --load=$LIBPATH --run-pass=$LLCPASSES $OBFMIROUTPUTPATH -o null
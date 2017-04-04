#!/bin/bash

rm -rf target/

>&2 echo "S8X2.arm"
PROJECT=S8X2 SYSTEM=S82 ARCH=arm make image -j8
PROJECT=S8X2 SYSTEM=M8 ARCH=arm make image -j8
PROJECT=S8X2 SYSTEM=T8 ARCH=arm make image -j8
PROJECT=S8X2 SYSTEM=MXIII-1G ARCH=arm make image -j8
PROJECT=S8X2 SYSTEM=M8S-PLUS ARCH=arm make image -j8
>&2 echo "S805.arm"
PROJECT=S805 SYSTEM=HD18Q ARCH=arm make image -j8
>&2 echo "AML8726.arm"
PROJECT=AML8726 ARCH=arm make image -j8

rm target/*.kernel
rm target/*.system


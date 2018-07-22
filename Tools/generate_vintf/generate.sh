#!/bin/sh
export LD_LIBRARY_PATH=$PWD/lib:$LD_LIBRARY_PATH
[ -d "./out" ] || mkdir out
adb shell "su -c /system/bin/lshal --init-vintf" > out/manifest.xml
./assemble_vintf -m -i out/manifest.xml -o out/compatibility_matrix_framework.xml
./assemble_vintf -c out/manifest.xml -o out/compatibility_matrix_device.xml -i compatibility_matrix.xml
echo "Done"
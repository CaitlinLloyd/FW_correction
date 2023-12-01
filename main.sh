#!/bin/bash
echo "hi" > tmp.txt
dwi=$1
bval=$2
bvec=$3
mask=$4
out=$5
python3 fenny.py -k=$dwi -r=$bvec -b=$bval -m=$mask -o=$out

out_fw=${out}_fw_volume_fraction.nii.gz
python3 fernet_fw_dwi.py -k=$dwi -r=$bvec -b=$bval -m=$mask -f=$out_fw -o=${out_fw/fw_volume_fraction.nii.gz/fw_corrected}



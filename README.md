# FW_correction: Remove freewater from diffusion-weighted imaging (dwi) data

The collection of files here includes everything needed to run freewater correction on dwi data (single shell).
With docker or singularity installed, you can run the following:

docker pull drlloydpi/fw_correct_arm
singularity pull pull fw_correct.sif docker://drlloydpi/fw_correct_arm

If you are running docker on an M1 mac, you can also use:
docker pull drlloydpi/fw_correct:latest

Then to run, you will use the following command
docker run -v $local_path_to_data:/data drlloydpi/fw_correct_arm ./main.sh /data/$path_to_dwi /data/$path_to_bval /data/$path_to_bvec /data/$path_to_mask ../data/fw_out

or

singularity run -v $local_path_to_data:/data fw_correct ./main.sh /data/$path_to_dwi /data/$path_to_bval /data/$path_to_bvec /data/$path_to_mask ../data/fw_out


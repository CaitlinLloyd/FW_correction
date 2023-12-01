# FW_correction: Remove freewater from diffusion-weighted imaging (dwi) data

The collection of files here includes everything needed to run freewater correction on dwi data (single shell).
With docker or singularity installed, you can run the following:

docker run -v $local_path_to_data:/data sha256:0f7d423b64e29c0df32942e2fc80d246b42f1ed53dddfe5e5c8b19bf6d49ecbb  ./main.sh /data/$path_to_dwi /data/$path_to_bval /data/$path_to_bvec /data/$path_to_mask ../data/fw_out


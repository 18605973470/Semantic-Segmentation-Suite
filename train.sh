#!/bin/bash

dir=ResBiSe152
if [ ! -d ${dir} ]; then
    mkdir ${dir}
fi

cat ./train.sh > ${dir}/cmdline

# CUDA_VISIBLE_DEVICES=1 
# --continue_training True
python3 train.py --num_epochs 300 --checkpoint_step 10 --validation_step 1 --dataset CamVid --dir ${dir} \
        --batch_size 2 --h_flip True --v_flip True --brightness 0.2 --model BiSeNet --frontend ResNet152 --num_val_images 32 

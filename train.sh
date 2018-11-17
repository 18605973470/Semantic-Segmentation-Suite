#!/bin/bash

dir=ResBiSe

cat ./train.sh > ${dir}/cmdline

# --continue_training True
python3 train.py --num_epochs 300 --checkpoint_step 5 --validation_step 1 --dataset CamVid --dir ${dir} \
        --batch_size 1 --h_flip True --v_flip True --brightness 0.2 --model BiSeNet --frontend ResNet101 --num_val_images 8
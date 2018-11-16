#!/bin/bash

CUDA_VISIBLE_DEVICES=1 python3 train.py --frontend MobileNetV2 --model DeepLabV3 --num_epochs 300 --batch_size 2 --h_flip True --v_flip True --rotation 300 --brightness 0.3 --num_val_images 128 --validation_step 2 --checkpoint_step 10 --dataset CamVid

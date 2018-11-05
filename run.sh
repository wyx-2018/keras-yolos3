#!/bin/bash
# 查找脚本所在路径，并进入
#DIR="$( cd "$( dirname "$0"  )" && pwd  )"
DIR=$PWD
cd $DIR
echo current dir is $PWD
# 设置目录，避免module找不到的问题
export PYTHONPATH=$PYTHONPATH:$DIR

dataset_dir=/data/wyx-123456/yolov3
weights=yolov3.weights
output_dir=/output
weights_path=$output_dir/$weights
train_weights=$output_dir/yolo_weights.h5

cp $dataset_dir/$weights $weights_path

python convert.py -w yolov3.cfg $weights_path $train_weights
# python yolo_video.py
# python train.py

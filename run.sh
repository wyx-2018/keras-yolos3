#!/bin/bash
# 查找脚本所在路径，并进入
#DIR="$( cd "$( dirname "$0"  )" && pwd  )"
DIR=$PWD
cd $DIR
echo current dir is $PWD
# 设置目录，避免module找不到的问题
export PYTHONPATH=$PYTHONPATH:$DIR

data_dir=/data/wyx-123456/yolov3
config_dir=./yolov3.cfg
weights=yolov3.weights
weights_dir=./yolov3.weights
output_dir=model_data/yolo_weights.h5

cp $data_dir/$weights ./
python convert.py -w config_path=$config_dir weights_path=$weights_dir output_path=$output_dir
# python yolo_video.py
# python train.py

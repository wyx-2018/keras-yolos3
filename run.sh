#!/bin/bash
# 查找脚本所在路径，并进入
#DIR="$( cd "$( dirname "$0"  )" && pwd  )"
DIR=$PWD
cd $DIR
echo current dir is $PWD
# 设置目录，避免module找不到的问题
export PYTHONPATH=$PYTHONPATH:$DIR

dataset_dir=/data/wyx-123456/yolov3
preweights=darknet53_weights.h5
output_dir=/output
img_path=VOCdevkit/VOC2007
weights_path=$output_dir/$weights

cp $dataset_dir/$preweights $weights_path

unzip -o $dataset_dir/JPEGImages.zip -d $img_path

python voc_annotation.py
python train.py
# python convert.py -w $cfg_path $weights_path $pretrain_weights
# python convert.py -w yolov3.cfg $weights_path $train_weights
# python yolo_video.py
# python train.py

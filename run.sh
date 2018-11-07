#!/bin/bash
# 查找脚本所在路径，并进入
#DIR="$( cd "$( dirname "$0"  )" && pwd  )"
DIR=$PWD
cd $DIR
echo current dir is $PWD
echo $(who)
# 设置目录，避免module找不到的问题
export PYTHONPATH=$PYTHONPATH:$DIR

dataset_dir=/data/wyx-123456/yolov3
preweights=darknet53_weights.h5
output_dir=/output
weights_path=$output_dir/$preweights

cp $dataset_dir/$preweights $weights_path

unzip -oq $dataset_dir/JPEGImages.zip -d $output_dir
# python test.py
python voc_annotation.py
python train.py

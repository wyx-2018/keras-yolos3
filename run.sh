data_dir=/data/wyx-123456/yolov3
config_dir=./yolov3.cfg
weights=yolov3.weights
weights_dir=/output
cp $data_dir/$weights $weights_dir
output_dir=model_data/yolo_weights.h5
python convert.py -w config_path=$config_dir weights_path=$weights_dir/$weights output_path=$output_dir
# python yolo_video.py
# python train.py

config_path=./yolov3.cfg
weights_path=/data/wyx-123456/yolov3/yolov3.weights
output_path=model_data/yolo_weights.h5
python convert.py -w config_path=$config_path weights_path=$weights_path output_path=$output_path
# python yolo_video.py
# python train.py

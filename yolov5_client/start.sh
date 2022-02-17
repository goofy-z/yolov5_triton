#pip install opencv-python -i https://pypi.tuna.tsinghua.edu.cn/simple

# python client.py -o data/bus_result.jpg image data/bus.jpg -m yolov5onnx

python client.py video video/ScenicSpotout1.mp4 -m yolov5onnx -o video/result1.mp4

#nohup command & 将命令放在后台执行
# 2>&1 将标准错误输出重定向到标准输出,用于保存错误打印内容
# nohup python client.py video video/ScenicSpotout1.mp4 -m yolov5onnx \
# -o video/result1.mp4 >> nohup1.out 2>&1 &

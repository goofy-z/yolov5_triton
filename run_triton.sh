# --strict-model-config=false 自动生成模型配置，不需要手动编写config.pbtxt文件(https://github.com/triton-inference-server/server/blob/r21.11/docs/model_configuration.md#auto-generated-model-configuration)
# memlock - 最大锁定内存地址空间
# stack - 最大栈大小
sudo docker run --gpus "device=3" --name tritonserver-21.11 --rm -p8000:8000 -p8001:8001 -p8002:8002 -v/home/ubantu/lishuang_project/yolov5_triton/triton-deploy/models:/models nvcr.io/nvidia/tritonserver:21.11-py3 tritonserver --model-repository=/models --strict-model-config=false --grpc-infer-allocation-pool-size=16
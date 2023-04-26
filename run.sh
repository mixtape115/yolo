xhost +

docker run -it --rm \
    --env="DISPLAY=${DISPLAY}" \
    -p 8889:8889 \
    --gpus all \
    --volume="/tmp/.X11-unix:/tmp/.X11-unix:rw" \
    --volume="${PWD}/img_data/:/home/user/img_data/" \
    --volume="${PWD}/YOLOv6/:/home/user/YOLOv6/" \
    --volume="${PWD}/yolov7/:/home/user/yolov7/" \
    --volume="${PWD}/yolov5/:/home/user/yolov5/" \
    --volume="${PWD}/qr/:/home/user/qr/" \
    --name="yolo" \
    yolo \
    bash
echo "done"

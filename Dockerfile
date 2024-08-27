FROM nvcr.io/nvidia/isaac/ros:aarch64-ros2_humble_b7e1ed6c02a6fa3c1c7392479291c035

RUN add-apt-repository universe

RUN apt-get update

RUN apt-get install -y vim python3 python3-pip
RUN apt-get install -y libopencv-dev
RUN apt-get install -y ros-humble-rqt*
RUN apt-get install -y ros-humble-isaac-ros-dnn-image-encoder ros-humble-isaac-ros-yolov8 ros-humble-isaac-ros-tensor-rt
RUN apt-get install -y python3-libnvinfer
RUN apt-get install -y python3-libnvinfer-dev

# COPY ./entry_point.sh /entry_point.sh

WORKDIR /ros2_ws

# ENTRYPOINT [ "/entry_point.sh" ]

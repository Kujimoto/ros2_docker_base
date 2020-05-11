FROM ros:dashing

RUN apt update &&\
    apt install -y ros-dashing-gazebo-ros-pkgs &&\
    apt install -y ros-dashing-turtlebot3 &&\
    apt install -y ros-dashing-turtlebot3-gazebo &&\
    apt-get install -y openssh-server &&\
    apt-get install -y x11-apps

RUN apt-get install -y mesa-utils &&\
    apt-get install -y libgl1-mesa-glx

# nvidia-container-runtime
ENV NVIDIA_VISIBLE_DEVICES \
    ${NVIDIA_VISIBLE_DEVICES:-all}
ENV NVIDIA_DRIVER_CAPABILITIES \
    ${NVIDIA_DRIVER_CAPABILITIES:+$NVIDIA_DRIVER_CAPABILITIES,}graphics
EXPOSE 22
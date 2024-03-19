sudo docker run -dit \
--name=ros_noetic_for_lidar_slam \
--privileged  \
--gpus all \
-v /dev:/dev \
-v /home/howie:/home/howie \
-v /tmp/.X11-unix:/tmp/.X11-unix  \
-v /media/howie:/media/howie \
-e DISPLAY=unix$DISPLAY \
-e NVIDIA_DRIVER_CAPABILITIES=all \
-w /home/howie \
--net=host \
howiehepburn/ros_noetic:v2
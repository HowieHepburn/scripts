sudo docker run -dit \
--name=carto \
--privileged  \
--gpus all \
--runtime=nvidia \
-v /dev:/dev \
-v /tmp/.X11-unix:/tmp/.X11-unix  \
-v /media/howie:/media/howie \
-e DISPLAY=unix$DISPLAY \
-w /home/carto \
--net=host \
fdko11/ros:focal-noetic-cartographer

sudo docker run -dit \
--name=anaconda3 \
--privileged  \
--gpus all \
-v /dev:/dev \
-v /home/howie:/home/howie \
-v /tmp/.X11-unix:/tmp/.X11-unix  \
-v /media/howie:/media/howie \
-e DISPLAY=unix$DISPLAY \
-w /home/howie \
--net=host \
continuumio/anaconda3

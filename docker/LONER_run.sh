sudo docker run -dit \
--name=LONER \
--privileged  \
--gpus all \
-v /dev:/dev \
-v "$PWD":/LONER \
-v /tmp/.X11-unix:/tmp/.X11-unix  \
-v /media/howie:/media/howie \
-e DISPLAY=unix$DISPLAY \
--net=host \
sethgi/loner:base_1.0 \
/bin/bash

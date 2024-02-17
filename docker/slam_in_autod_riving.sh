sudo docker run -dit \
--name=sad \
--privileged  \
--gpus all \
-v /dev:/dev \
-v "$PWD":/sad \
-v /tmp/.X11-unix:/tmp/.X11-unix  \
-v /media/howie:/media/howie \
-e DISPLAY=unix$DISPLAY \
--net=host \
sad:v1 \
/bin/bash

#!/bin/bash

docker run -d --rm \
	--name zenmap \
	-e DISPLAY \
	-e XAUTHORITY='/xauthority' \
	-v ${HOME}:/home/zenmap \
	-v /tmp/.X11-unix/:/tmp/.X11-unix/ \
	-v ${XAUTHORITY}:/xauthority:ro \
	alexandreoda/zenmap

#!/bin/bash

docker build --progress=plain -f Dockerfile.nano -t vri-ufpr/orb3-slam:latest . 2>&1 | tee docker_build.log

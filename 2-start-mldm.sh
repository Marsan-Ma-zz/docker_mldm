#!/bin/bash

WORK=$HOME/workspace

#docker run -d \
#  --name=mldm_env \
#  -v $WORK:/home/$(whoami)/workspace \
#  -p 8880-8899:8880-8899 \
#  -it marsan/mldm ipynb
# 
##  -h mldm_env \ 
##  -p 6800-6810:6800-6810 \
##docker run -it kaggle/python bash 

docker-compose up -d
#docker-compose restart


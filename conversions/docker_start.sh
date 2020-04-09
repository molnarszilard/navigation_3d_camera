#!/bin/bash
echo $PWD/$1
cp docker_obj2off.py ./$1
sudo docker run -it -p 81:8080 -v $PWD/$1:/home pymesh/pymesh /home/docker_obj2off.py
rm ./$1/docker_obj2off.py




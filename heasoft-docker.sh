#!/bin/bash

#set -xe

COMMAND=$@

HEASOFT_DOCKER_IMAGE=ichangzhi/astrophys:sl6-heasoft6.24

echo "using heaosft in docker images: ${HEASOFT_DOCKER_IMAGE}"
echo "using WORKDIR: ${WORKDIR:=$PWD}"
#echo "using WORKDIR: ${WORKDIR:=$HOME}"


[ -s /tmp/.X11-unix ] || { echo "no /tmp/.X11-unix? no X? not allowed!"; }

mkdir -pv $WORKDIR/pfiles

ip=$(ifconfig en0 | grep inet | awk '$1=="inet" {print $2}')

docker run \
    -e DISPLAY=$ip:0 \
    -v /tmp/.X11-unix:/tmp/.X11-unix \
    -v $WORKDIR:/home/astro \
    --rm -it  --user $(id -u) \
        ${HEASOFT_DOCKER_IMAGE} bash -c "

export HOME=/home/astro
source /home/soft/heasoft-6.24/init.sh

cd \$HOME

echo -e '\\e[31mrunning\\e[37m $COMMAND\\e[0m'

$COMMAND
"

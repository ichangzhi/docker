#!/bin/bash

#set -xe

COMMAND=$@

HEASOFT_DOCKER_IMAGE=ichangzhi/hea:heasoft-6.24

echo "using HEAsoft in docker images: ${HEASOFT_DOCKER_IMAGE}"
echo "using CALDB: ${CALDB:?please set this variable to your local CALDB}"
echo "using WORKDIR: ${WORKDIR:=$PWD}"
#echo "using WORKDIR: ${WORKDIR:=$HOME}"

if [ "`uname -s`x" = "Linux"x ]; then
    ip=${DISPLAY:?make sure you are in an X11 session}
else
    echo "this script only for Linux, terminated."
    exit 1
fi
[ -s /tmp/.X11-unix ] || { echo "no /tmp/.X11-unix? no X? not allowed!"; }

mkdir -pv $WORKDIR/pfiles

docker run \
    -e DISPLAY=$ip:0 \
    -v /tmp/.X11-unix:/tmp/.X11-unix \
    -v $CALDB:/home/soft/caldb \
    -v $WORKDIR:/home/astro \
    --rm -it  --user $(id -u) \
        ${HEASOFT_DOCKER_IMAGE} bash -c "

export HOME=/home/astro
source /home/soft/init.sh

cd \$HOME

echo -e '\\e[31mrunning\\e[37m $COMMAND\\e[0m'

$COMMAND
"

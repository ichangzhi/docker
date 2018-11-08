# Docker
<https://hub.docker.com/r/ichangzhi/hea/>

First, please install [Docker](https://www.docker.com/products/docker-engine#/download).


# getting started
## download the image
get the HEAsoft image from DockerHub by doing
```bash
docker pull ichangzhi/hea:heasoft-6.24
```
## check the local images
```bash
docker images
```
You may get something like this:
```bash
REPOSITORY          TAG                 IMAGE ID            CREATED             SIZE
ichangzhi/hea       heasoft-6.24        f50fc3ff7773        About an hour ago   4.69GB
```

# for MacOS

To use graphics on OSX, make sure XQuarz is installed. After installing, 
open XQuartz, and go to XQuartz, Preferences, select the Security tab, 
and tick the box "Allow connections from network clients". Then exit XQuarz. 

usage:
```bash
export CALDB=/your/local/caldb/path
./heasoft-docker-for-mac.sh fv xxxx.fits
```

# for Linux (not being tested)
to use graphics, make sure you are in an X11 session

usage:
```bash
export CALDB=/your/local/caldb/path
./heasoft-docker-for-linux.sh fv xxxx.fits
```

# Docker
<https://hub.docker.com/u/ichangzhi>

First, please install [Docker](https://www.docker.com/products/docker-engine#/download).


# getting started
## download the image
get the HEAsoft image from DockerHub by doing
```bash
docker pull ichangzhi/hea:heasoft-6.26.1
```
## check the local images
```bash
docker images
```
You may get something like this:
```bash
REPOSITORY          TAG                 IMAGE ID            CREATED             SIZE
ichangzhi/hea       heasoft-6.25        84b97e8b3316        About an hour ago   5.11GB
```

# for MacOS

To use graphics on OSX, make sure [XQuartz](https://www.xquartz.org/) is installed.
After installing, open XQuartz, and go to XQuartz, Preferences, select the Security tab, 
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
# for Unix-like OS (both macOS and Linux)
later

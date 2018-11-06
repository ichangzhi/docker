# docker
<https://hub.docker.com/r/ichangzhi/hea/>

some scripts used for docker images

## heasoft-docker.sh
```bash
docker pull ichangzhi/hea:heasoft6.24
```
a script used to work with a heasoft-6.24 container in ichangzhi/hea:heasoft6.24

For MacOS (Mojave is OK).

example:
```bash
export CALDB=/your/local/caldb/path
./heasoft-docker.sh fv xxxx.fits
```

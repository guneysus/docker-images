

windows powershell
==================


```shell
docker run -it -v ${PWD}:/data guneysu/imagemagick convert /data/*.jpg json: > _.json
```


linux
=====

```shell
docker run -v $(pwd):/data guneysu/imagemagick "convert /data/*.jpg json: > /data/_.json"
```

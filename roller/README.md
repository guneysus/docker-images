Python Wheel Packager
=====================


usage:

## One-off single package

```bash
docker run -it -v $(pwd):/tmp  guneysu/roller:3.5 pip wheel click
```


## One-off with requirements file

```bash
docker run -i -v $(pwd)/whl:/tmp -a stdin -a stdout guneysu/roller:3.5 pip wheel -r /dev/stdin < requirements.txt

docker run -i -v $(pwd)/whl:/tmp -a stdin guneysu/roller:3.5 pip wheel -r /dev/stdin << EOF
tornado==4.5.1
click==6.7
EOF
```

## Onbuild Image with `requirements.txt`
```Dockerfile
FROM guneysu/roller:3.5-onbuild
```
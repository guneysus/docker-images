FROM guneysu/roller:3.5
WORKDIR /tmp
ONBUILD ADD requirements.txt /tmp/
ONBUILD RUN pip wheel -r /tmp/requirements.txt

FROM guneysu/roller:2.7
WORKDIR /tmp
ONBUILD ADD requirements.txt /tmp/
ONBUILD RUN pip wheel -r /tmp/requirements.txt

FROM guneysu/python:2.7.12


ADD whl/ /whl
WORKDIR /whl

RUN pip install --no-cache-dir lxml-3.6.4-cp27-cp27mu-linux_x86_64.whl \
    zope.interface-4.3.2-cp27-cp27mu-linux_x86_64.whl \
    incremental-16.10.1-py2.py3-none-any.whl \
    constantly-15.1.0-py2.py3-none-any.whl \
    setuptools-28.7.1-py2.py3-none-any.whl \
    six-1.10.0-py2.py3-none-any.whl \
    w3lib-1.15.0-py2.py3-none-any.whl \
    queuelib-1.4.2-py2.py3-none-any.whl \
    \
    idna-2.1-py2.py3-none-any.whl \
    pycparser-2.17-py2.py3-none-any.whl \
    cffi-1.8.3-cp27-cp27mu-linux_x86_64.whl \
    \ 
    pyasn1-0.1.9-py2.py3-none-any.whl \
    enum34-1.1.6-py2-none-any.whl \
    ipaddress-1.0.17-py2-none-any.whl \
    \ 
    cryptography-1.5.2-cp27-cp27mu-linux_x86_64.whl \
    pyOpenSSL-16.2.0-py2.py3-none-any.whl \
    Twisted-16.5.0-cp27-cp27mu-linux_x86_64.whl \
    \
    cssselect-1.0.0-py2.py3-none-any.whl \
    parsel-1.0.3-py2.py3-none-any.whl \
    pyasn1_modules-0.0.8-py2.py3-none-any.whl \
    attrs-16.2.0-py2.py3-none-any.whl \
    service_identity-16.0.0-py2.py3-none-any.whl \ 
    Scrapy-1.2.1-py2.py3-none-any.whl

RUN apk add libxslt libffi -U --no-cache && \
  apk del --purge *-dev build-base && \
  rm -rf /tmp/* /var/cache/apk/* /root/.cache/* && \
  rm /whl/*
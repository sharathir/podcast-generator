From ubuntu:latest
FROM python:3.10-slim
RUN apt-get update && apt-get install -y \
    build-essential \
    python3.10 \
    python3.10-distutils \
    python3-pip \
    git

RUN pip3 install --no-cache-dir --upgrade pip setuptools    
RUN pip3 install pyYAML

COPY feed.py /usr/bin/feed.py

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
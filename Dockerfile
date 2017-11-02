FROM        azelf/base
MAINTAINER  dev@azelf.com

ENV         LANG C.UTF-8

# 파일 복사 및 requirements 설치
COPY        . /srv/app
RUN         /root/.pyenv/versions/app/bin/pip install -r \
            /srv/app/requirements.txt

WORKDIR     /srv/app
RUN         pyenv local app
FROM node:10.9.0

SHELL ["/bin/bash", "-c"]

# node 环境配置
RUN apt-get update \
  && npm i npm@latest -g \
  && npm config set user 0 \
  && npm config set unsafe-perm true

# vim 配置
RUN apt-get install vim -y

# vimrc 配置
RUN git clone https://github.com/jackness1208/vimrc.git
RUN cp -rf /vimrc/centos/vimrc /etc/vimrc
RUN rm -rf /vimrc

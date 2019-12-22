FROM ubuntu
ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt install -y net-tools && apt install -y tinyproxy && apt-get install -y openconnect
COPY password.txt .
COPY tinyproxy.conf /etc/tinyproxy/tinyproxy.conf

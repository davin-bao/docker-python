FROM python:3.7

COPY sources.list /etc/apt/sources.list

RUN apt-get update \
&& pip install tornado==4.4.2 \
&& pip install xmltodict==0.11.0 \
&& pip install pymysql==0.9.2 \
&& pip install requests==2.19.1 \
&& cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime

FROM python:3.7

COPY sources.list /etc/apt/sources.list

RUN apt-get update \
&& apt-get install -y apt-utils \
&& apt-get install -y sasl2-bin libsasl2-2 libsasl2-dev libsasl2-modules python-dev vim \
&& pip install tornado==5.1 \
&& pip install xmltodict==0.11.0 \
&& pip install pymysql==0.9.2 \
&& pip install requests==2.19.1 \
&& cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime

FROM python:3.7

COPY sources.list /etc/apt/sources.list

RUN apt-get update \
&& apt-get install -y phantomjs \
&& pip install tornado==4.4.2 \
&& pip install xmltodict==0.11.0 \
&& pip install pymysql==0.9.2 \
&& pip install requests==2.19.1 \
&& pip install lxml==4.2.4 \
&& pip install bs4==0.0.1 \
&& pip install selenium==3.14.0 \
&& pip install sqlalchemy==1.2.11 \
&& cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime

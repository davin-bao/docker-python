FROM python:2.7-jessie

COPY sources.list /etc/apt/sources.list

RUN apt-get update \
&& apt-get install -y apt-utils \
&& apt-get install -y sasl2-bin libsasl2-2 libsasl2-dev libsasl2-modules python-dev vim \
&& pip install thrift_sasl==0.3.0 \
&& pip install pure-sasl==0.5.0 \
&& pip install iptools==0.6.1 \
&& pip install thrift==0.9.3 \
&& pip install six==1.11.0 \
&& pip install impyla==0.14.1 \
&& pip install wsgilog==0.3.1 \
&& pip install apscheduler==3.5.0 \
&& pip install web.py==0.39 \
&& pip install requests==2.18.4 \
&& pip install redis==2.10.6 \
&& pip install MySQL-python==1.2.5 \
&& pip install bs4==0.0.1 \
&& pip install nltk==3.3.0 \
&& cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime

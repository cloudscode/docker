
FROM registry.cn-hangzhou.aliyuncs.com/pft-java/jdk:1.8

RUN groupadd -r jetty && useradd -r -g jetty jetty

ENV JETTY_HOME /usr/local/jetty
ENV PATH $JETTY_HOME/bin:$PATH

RUN set -xe \
	&& mkdir -p "$JETTY_HOME" \
	&& yum install -y unzip zip 

WORKDIR $JETTY_HOME

ENV JETTY_VERSION 9.4.2.v20170220


COPY ./jetty.tar.gz /tmp/
RUN mkdir -p "/tmp/jetty"

ENV JETTY_BASE /var/lib/jetty9

RUN tar zxvf /tmp/jetty.tar.gz -C /tmp/jetty --strip-components=1  && ln -s /tmp/jetty/  /var/lib/jetty9


EXPOSE 8080
CMD ["java","-jar","/usr/local/jetty/start.jar"]
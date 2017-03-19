#
# MAINTAINER        jian li <lijian@12301.cc>
# DOCKER-VERSION    1.12.5
#
# Dockerizing CentOS7: Dockerfile for building CentOS Zookeeper images
#
FROM registry.cn-hangzhou.aliyuncs.com/pft-java/jdk:1.8

MAINTAINER jian li <lijian@12301.cc>

ENV ZOOKEEPER_VERSION 3.5.0-alpha

RUN yum -y install tar wget 

RUN wget -q -O - http://apache.mirrors.pair.com/zookeeper/zookeeper-$ZOOKEEPER_VERSION/zookeeper-$ZOOKEEPER_VERSION.tar.gz | tar -xzf - -C /opt \
    && mv /opt/zookeeper-$ZOOKEEPER_VERSION /opt/zookeeper \
    && cp /opt/zookeeper/conf/zoo_sample.cfg /opt/zookeeper/conf/zoo.cfg \
    && mkdir -p /tmp/zookeeper

ENV JAVA_HOME /usr/java/latest

EXPOSE 2181 2888 3888

WORKDIR /opt/zookeeper

VOLUME ["/opt/zookeeper/conf", "/tmp/zookeeper"]

ENTRYPOINT ["/opt/zookeeper/bin/zkServer.sh"]
CMD ["start-foreground"]


#
# MAINTAINER        jian li <lijian@12301.cc>
# DOCKER-VERSION    1.12.5
#
# Dockerizing CentOS7: Dockerfile for building CentOS Jdk8 images
#
FROM centos:latest
MAINTAINER jian li <lijian@12301.cc>

RUN yum update -y
RUN yum install -y wget
RUN wget --no-check-certificate --no-cookies --header "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/8u45-b14/jdk-8u45-linux-x64.rpm

RUN rpm -ivh jdk-8*-linux-x64.rpm && rm jdk-8*-linux-x64.rpm

RUN yum install -y net-tools

ENV JAVA_HOME /usr/java/latest

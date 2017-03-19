FROM jetty:latest

ENV JETTY_WEB /var/jetty/pft/web

ENV WEBAPP_VERSION 0.0.1-20170319.054842-3
ENV WEBAPP_URL http://192.168.20.140:8081/nexus/content/repositories/snapshots/com/pft/pft-member/0.0.1-SNAPSHOT/pft-member-$WEBAPP_VERSION.war

RUN set -xe \	
	&& mkdir -p "$JETTY_WEB" \
	&& mkdir -p "$JETTY_WEB/logs" \
	&& mkdir -p "$JETTY_WEB/webapps/ROOT" \
	&& cd "$JETTY_WEB/webapps" \
	&& curl -SL "$WEBAPP_URL" -o webapp.war \	
	&& unzip webapp.war -d  ROOT \	
	&& rm webapp.war*  

COPY ["start.ini","start.sh","/$JETTY_WEB/"]

EXPOSE 8084 8904

RUN chmod -R 777 /$JETTY_WEB/start.sh

WORKDIR  /$JETTY_WEB/

CMD ["/var/jetty/pft/web/start.sh","-d"]
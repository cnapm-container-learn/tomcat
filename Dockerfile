FROM tutum/tomcat:7.0
MAINTAINER wdxxs2z <jackyuan88726@gmail.com>

RUN apt-get update && apt-get install -y unzip

ENV TINGYUN_AGENT_VERSION 2.0.1

ENV TINGYUN_LICENSE_KEY <%licenseKey%>

ENV TINGYUN_APP_NAME ApplicationName

ENV TINGYUN_HOME /tingyun

ENV JAVA_OPTS "-javaagent:/tingyun/tingyun-agent-java.jar"

#WORKDIR /tingyun

RUN wget http://download.tingyun.com/agent/java/${TINGYUN_AGENT_VERSION}/tingyun-agent-java-${TINGYUN_AGENT_VERSION}.zip && \
    unzip tingyun-agent-java-${TINGYUN_AGENT_VERSION}.zip && \
    rm tingyun-agent-java-${TINGYUN_AGENT_VERSION}.zip

ADD set.sh /set.sh

RUN chmod +x /set.sh

CMD ["/set.sh"]
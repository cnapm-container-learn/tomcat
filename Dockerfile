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
    sed -i "s#^nbs.license_key=.*#nbs.license_key=${TINGYUN_LICENSE_KEY}#g"  tingyun/tingyun.properties && \
    sed -i "s#^nbs.app_name=.*#nbs.app_name=${TINGYUN_APP_NAME}#g"  tingyun/tingyun.properties && \
    rm tingyun-agent-java-${TINGYUN_AGENT_VERSION}.zip
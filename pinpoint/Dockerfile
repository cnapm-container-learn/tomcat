FROM tutum/tomcat:7.0
MAINTAINER wdxxs2z <jackyuan88726@gmail.com>

RUN apt-get update && apt-get install -y wget

ENV PINPOINT_AGENT_VERSION 1.5.1

ENV PINPOINT_APP_NAME ApplicationName

ENV PINPOINT_AGENT_ID Agent_Id

ENV PINPOINT_PROFILER_COLLECTOR_IP 127.0.0.1

ENV PINPOINT_HOME /pinpoint

RUN mkdir /pinpoint

RUN wget https://github.com/naver/pinpoint/releases/download/${PINPOINT_AGENT_VERSION}/pinpoint-agent-${PINPOINT_AGENT_VERSION}.tar.gz && \
    tar zxf pinpoint-agent-${PINPOINT_AGENT_VERSION}.tar.gz -C /pinpoint && \
    rm pinpoint-agent-${PINPOINT_AGENT_VERSION}.tar.gz

ADD set.sh /set.sh

RUN chmod +x /set.sh

CMD /set.sh;/run.sh
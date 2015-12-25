FROM tutum/tomcat:7.0
MAINTAINER wdxxs2z <jackyuan88726@gmail.com>

RUN apt-get update && apt-get install -y unzip

ENV ONEAPM_LICENSE_KEY <%licenseKey%>

ENV ONEAPM_APP_NAME ApplicationName

ENV ONEAPM_HOME /OneAPM

ENV JAVA_OPTS "-javaagent:/OneAPM/oneapm.jar"

RUN wget https://user.oneapm.com/account/a4275eac98a952a661e7c5022e44324c/agent/java/OneAPM_java_Agent_latest.zip && \
    unzip OneAPM_java_Agent_latest.zip && \
    rm OneAPM_java_Agent_latest.zip

ADD set.sh /set.sh

RUN chmod +x /set.sh

CMD /set.sh;/run.sh
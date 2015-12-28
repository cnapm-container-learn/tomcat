# tomcat
Tomcat custom agent docker images:support tingyun,oneapm,pinpoint agents

## Base
tomcat7.0.55 jdk1.7.0_67

## Build

### tingyun jar agent
```
docker build -t tingyun/tomcat7:2.0.1 .
```
### oneapm jar agent
```
docker build -t oneapm/tomcat7:latest .
```
### pinpoint jar agent
```
docker build -t pinpoint/tomcat7:1.5.1 .
```

### Run

### tingyun
```
docker run -i -d --env TINGYUN_LICENSE_KEY=your_license_key --env TINGYUN_APP_NAME=your_app_name -P -t tingyun/tomcat7:2.0.1
```

### oneapm
```
docker run -i -d --env ONEAPM_LICENSE_KEY=your_license_key --env ONEAPM_APP_NAME=your_app_name -P -t oneapm/tomcat7:latest
```

### pinpoint
```
docker run -i -d --env PINPOINT_APP_NAME=your_app_name --env PINPOINT_AGENT_ID=your_app_agentId --env PINPOINT_PROFILER_COLLECTOR_IP=your_collector_ip -P -t pinpoint/tomcat7:1.5.1
```
# tomcat
Tomcat tingyun agent docker images

## Build
```
docker build -t tingyun/tomcat7:2.0.1 .
```

### Run
```
docker run -i -d --env TINGYUN_LICENSE_KEY=your_license_key --env TINGYUN_APP_NAME=your_app_name -P -t tingyun/tomcat7:2.0.1
```



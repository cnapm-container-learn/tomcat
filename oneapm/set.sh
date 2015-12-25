#!/bin/bash

sed -i "s#^license_key =.*#license_key=${ONEAPM_LICENSE_KEY}#g"  OneAPM/oneapm.properties && \
sed -i "s#^app_name =.*#app_name=${ONEAPM_APP_NAME}#g"  OneAPM/oneapm.properties
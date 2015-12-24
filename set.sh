#!/bin/bash

sed -i "s#^nbs.license_key=.*#nbs.license_key=${TINGYUN_LICENSE_KEY}#g"  tingyun/tingyun.properties && \
sed -i "s#^nbs.app_name=.*#nbs.app_name=${TINGYUN_APP_NAME}#g"  tingyun/tingyun.properties
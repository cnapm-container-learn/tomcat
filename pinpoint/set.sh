#!/bin/bash

export profiler.collector.ip=${PINPOINT_PROFILER_COLLECTOR_IP}

export JAVA_OPTS="-javaagent:/pinpoint/pinpoint-bootstrap-${PINPOINT_AGENT_VERSION}.jar -Dpinpoint.agentId=${PINPOINT_AGENT_ID} -Dpinpoint.applicationName=${PINPOINT_APP_NAME}"
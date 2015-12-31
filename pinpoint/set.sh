#!/bin/bash

sed -i "s#^profiler.collector.ip=.*#profiler.collector.ip=${PINPOINT_PROFILER_COLLECTOR_IP}#g" /pinpoint/pinpoint-agent-${PINPOINT_AGENT_VERSION}/pinpoint.config
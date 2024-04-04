#!/usr/bin/env bash

service openvswitch-switch start
ovs-vsctl set-manager ptcp:6640

echo "Starting up..."
python -u ${SCRIPTDIR} -D

service openvswitch-switch stop

#!/bin/sh
echo "Starting haproxy..."
haproxy -f "/etc/haproxy/haproxy.cfg"

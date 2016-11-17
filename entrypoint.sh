#!/bin/sh
set -e
if [ "$1" = '' ]; then
  metricbeat -e
else
  exec "$@"
fi


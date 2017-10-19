#!/bin/bash

if [ -z ${JPIP_DATA_DIR} ]; then
 echo "JPIP_DATA_DIR environment must be defined"
 exit 1
fi

if [ -z ${SOURCES} ] ; then
   export SOURCES=25
fi

pushd ${JPIP_DATA_DIR} >/dev/null
ossim-jpip-server -sources ${SOURCES} -clients 25 -port 9000 -max_rate 40000000 -address localhost -connection_threads 100
popd > /dev/null

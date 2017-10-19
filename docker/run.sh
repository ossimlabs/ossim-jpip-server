#!/bin/bash

# Required params

if [ -z ${JPIP_DATA_DIR} ]; then
 echo "JPIP_DATA_DIR environment must be defined"
 exit 1
fi

# Defaulted params

if [ -z ${SOURCES} ] ; then
   export SOURCES=25
fi

if [ -z ${CLIENTS} ] ; then
   export CLIENTS=25
fi

if [ -z ${PORT} ] ; then
   export PORT=8080
fi

if [ -z ${MAX_RATE} ] ; then
   export MAX_RATE=40000000
fi

if [ -z ${ADDRESS} ] ; then
   export ADDRESS=localhost
fi

if [ -z ${CONNECTION_THREADS} ] ; then
   export CONNECTION_THREADS=100
fi

pushd ${JPIP_DATA_DIR} >/dev/null
ossim-jpip-server -sources ${SOURCES} -clients ${CLIENTS} -port ${PORT} -max_rate ${MAX_RATE} -address ${ADDRESS} -connection_threads ${CONNECTION_THREADS}
popd > /dev/null

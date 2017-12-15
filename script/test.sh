#!/bin/bash -e

REDIS_HOST=${REDIS_HOST:-redis}
REDIS_PORT=${REDIS_PORT:-63799}
REDIS_PASS=${REDIS_PASS:-foopass}

wait-for-it ${REDIS_HOST}:${REDIS_PORT}
npm install
npm test

#!/bin/bash -e

PORT=${REDIS_PORT:-6379}

wait-for-it redis:${PORT}
npm install
npm test

#!/bin/bash

export TERM=${TERM:-dumb}
cd hello-concourse
./gradlew --no-daemon build

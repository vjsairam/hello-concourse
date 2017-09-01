#!/bin/bash

export ROOT_FOLDER=$( pwd )
export GRADLE_USER_HOME="${ROOT_FOLDER}/.gradle"

export TERM=${TERM:-dumb}
cd hello-concourse-repo
./gradlew --no-daemon build

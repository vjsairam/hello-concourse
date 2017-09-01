#!/bin/bash

export ROOT_FOLDER=$( pwd )
export GRADLE_USER_HOME="${ROOT_FOLDER}/.gradle"

export TERM=${TERM:-dumb}
cd hello-concourse-repo
./gradlew --no-daemon --info build -xtest
mkdir -p ./output
cp ./build/libs/*.jar ./output
cp ./src/main/docker/* ./output
find ./output

#!/bin/bash

export ROOT_FOLDER=$( pwd )
export GRADLE_USER_HOME="${ROOT_FOLDER}/.gradle"

export TERM=${TERM:-dumb}
cd hello-concourse-repo
./gradlew --no-daemon build -xtest

cp build/libs/*.jar $ROOT_FOLDER/output
cp src/main/docker/* $ROOT_FOLDER/output
ls -l $ROOT_FOLDER/output

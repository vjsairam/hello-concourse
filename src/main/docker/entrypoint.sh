#!/bin/sh

if [[ ! $KUBERNETES_MASTER ]]
then
    # backward compatibility: default address of the kubernetes master, working on kube-prd
    # On kube-stg pods MUST have this property set
	export KUBERNETES_MASTER=https://kubernetes.default.svc
fi

exec java -Dkubernetes.master=$KUBERNETES_MASTER -Djava.security.egd=file:/dev/./urandom $JAVA_OPTS -jar /app/hello-concourse.jar "$*"

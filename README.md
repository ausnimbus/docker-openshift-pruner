# OpenShift Pruner

Removes old builds, deployments and images for [AusNimbus](https://www.ausnimbus.com.au/)

## Installation

`docker pull ausnimbus/openshift-pruner:latest`

Or build this image:

```
git clone https://github.com/ausnimbus/docker-openshift-pruner.git
cd docker-openshift-pruner
docker build -t openshift-pruner:latest .
```

## Create Service Account

```
oc create serviceaccount openshift-pruner

oc adm policy add-cluster-role-to-user edit system:serviceaccount:ausnimbus-infra:openshift-pruner
oc adm policy add-cluster-role-to-user system:image-pruner system:serviceaccount:ausnimbus-infra:openshift-pruner

oc create -f openshift-pruner.yaml
```

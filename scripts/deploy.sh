#!/bin/bash

HELM_REPO=$bamboo_HELM_REPO
HELM_USR=$bamboo_HELM_USR
HELM_PSW=$bamboo_HELM_PSW


#create env if not present
/bin/kubectl create ns test

#kubectl run hello-dotnet --image=sugendh/dotnetcorebmb:latest --port=8080 -n test
#kubectl expose deployment hello-dotnet --type=LoadBalancer --port=8080 -n test

#rm -rf helm
#/bin/helm repo add kjt-harbor  $HELM_REPO
/bin/helm repo add kjt-harbor --username=$HELM_USR --password=$HELM_PSW $HELM_REPO
/bin/helm repo update

#helm fetch http://23.101.135.43/artifactory/helm-local/devops-0.45.0.tgz

#helm install
#/bin/helm install --namespace test --name dotnetcorebmb-latest-test --set image.repository=sugendh/dotnetcorebmb,image.tag=latest helm/devops

#helm upgrade
#/usr/local/bin/helm upgrade --install --namespace test dotnetcorebmb-latest-test --set image.repository=sugendh/dotnetcorebmb,image.tag=latest helm/devops

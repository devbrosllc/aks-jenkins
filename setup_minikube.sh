#!/bin/bash
# Environment
export KUBECONFIG=~/.kube/config

# Install Jenkins X
if [[ $(brew ls --versions jx) ]]; then
  echo 'jx is already installed. Go ahead and create your cluster!'
else
  echo 'Installing jx (Jenkins X) using brew...'
  brew tap jenkins-x/jx
  brew install jx
fi

jx create cluster minikube \
--memory 4096 \
--cpu 3 \
--disk-size 50GB \
--vm-driver virtualbox
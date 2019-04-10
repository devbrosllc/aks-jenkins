### Prerequisites
* Azure CLI (if you want to use Azure)
* A valid Azure Subscription
* Jenkins X (this is installed for you using any of the provided scripts)

## Provisioning - Azure
Run the script `setup.azcli` contained in this repo. You don't need the Azure CLI to run it; it has the `.azcli` extension just for VSCode to interpret it properly. If you are using AKS, this will log you into the Azure CLI and install Jenkins X. if it is not already installed on your system. It will not update Jenkins X to the latest version; it just checks whether a version is installed. If you want to update Jenkins X, you'll have to do it yourself.

`setup.azcli` performs the following actions:
* Creates an AKS cluster (if you want to use minikube change the `PROVIDER` variable to minikube)
* Merges the credentials for the newly created cluster into ~/.kube/config
* Sets the current kubectl context to the new cluster
* Installs jx into the cluster

You'll be prompted for a bunch of config along the way by `jx`, so keep an eye on the terminal.

## Provisioning - Minikube
Run the script `setup_minikube.sh` contained in this repo.

`setup_minikube.sh` performs the following actions,
* Runs `jx create cluster` to create a minikube cluster

with the following defaults:
- 

I would also recommend using these settings when prompted by the installer:
 - memory (MB): 2048
 - cpu (cores): 2
 - disk-size: 25GB
 - driver: hyperkit

## Cleanup
### Azure
Run the following commands to clean up your Azure resources:
`az group list`
`az group delete -n <your resource group name>`

### Minikube
Run the following commands to clean up your Minikube cluster:
`minikube stop`
`minikube delete`
### Prerequisites
* Azure CLI
* A valid Azure Subscription
* Jenkins X (this is installed for you using the script `setup.azcli`)

## Provisioning - setup.azcli
Run the script `setup.azcli` contained in this repo. This will log you into the Azure CLI and install Jenkins X if it is not already installed on your system. It will not update Jenkins X to the latest version; it just checks whether a version is installed. If you want to update Jenkins X, you'll have to do it yourself.

`setup.azcli` performs the following actions:
* Creates an AKS cluster
* Merges the credentials for the newly created cluster into ~/.kube/config
* Sets the current kubectl context to the new cluster
* Installs jx into the cluster

You'll be prompted for a bunch of config along the way by `jx`, so keep an eye on the terminal.
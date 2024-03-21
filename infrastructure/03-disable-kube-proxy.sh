source 00-variables.sh

az provider register --namespace Microsoft.ContainerService

az aks update -g "$rgName" -n "$aksName" --kube-proxy-config kube-proxy.json
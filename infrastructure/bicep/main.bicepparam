using 'main.bicep'

param resourceGroupName = 'cilium-service-mesh-rg'
param clusterName = 'cilium-service-mesh-aks'
param kubernetesVersion = '1.29'
param location = 'westeurope'
param nodeCount = 1
param nodeSize = 'Standard_B2ms'
param loadBalancerSku = 'basic'

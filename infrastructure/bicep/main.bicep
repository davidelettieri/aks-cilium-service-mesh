param resourceGroupName string
param clusterName string
param location string
param kubernetesVersion string
param nodeCount int
param nodeSize string
@allowed(['standard', 'basic'])
param loadBalancerSku string

targetScope='subscription'

resource rg 'Microsoft.Resources/resourceGroups@2023-07-01' = {
  name: resourceGroupName
  location: location
}

module aksCluster 'aks.bicep' = {
  name: clusterName
  scope: rg
  params: {
    clusterName: clusterName
    kubernetesVersion: kubernetesVersion
    location: location
    nodeCount: nodeCount
    nodeSize: nodeSize
    loadBalancerSku: loadBalancerSku
  }
}

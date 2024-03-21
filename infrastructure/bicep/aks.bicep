param clusterName string
param location string
param kubernetesVersion string
param nodeCount int
param nodeSize string
@allowed(['standard', 'basic'])
param loadBalancerSku string
resource aksCluster 'Microsoft.ContainerService/managedClusters@2023-10-01' = {
  name: clusterName
  location: location
  identity: {
    type: 'SystemAssigned'
  }
  sku: {
    name: 'Base'
    tier: 'Free'
  }
  properties: {
    agentPoolProfiles: [
      {
        name: 'nodepool1'
        count: nodeCount
        mode: 'System'
        vmSize: nodeSize
        enableAutoScaling: false
      }
    ]
    dnsPrefix: clusterName
    kubernetesVersion: kubernetesVersion
    networkProfile: {
      networkPlugin: 'none'
      loadBalancerSku: loadBalancerSku
    }
  }
}

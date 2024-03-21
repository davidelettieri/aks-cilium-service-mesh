source 00-variables.sh

az deployment sub create \
    --name aks-cilium-service-mesh \
    --template-file bicep/main.bicep \
    --parameters bicep/main.bicepparam \
    --location westeurope

az aks get-credentials --resource-group "$rgName" --name "$aksName"
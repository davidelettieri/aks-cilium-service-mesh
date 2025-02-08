source 00-variables.sh

cilium install --version 1.17.0 \
    --set azure.resourceGroup="$rgName" \
    --set kubeProxyReplacement=true \
    --set gatewayAPI.enabled=true
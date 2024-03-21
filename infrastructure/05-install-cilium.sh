source 00-variables.sh

cilium install --version 1.15.2 \
    --set azure.resourceGroup="$rgName" \
    --set kubeProxyReplacement=true \
    --set gatewayAPI.enabled=true
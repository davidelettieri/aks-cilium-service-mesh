# Notes

This repo is a companion to https://davidelettier.it/2024/03/21/aks-cilium-service-mesh

The devcontainer is configured to have all the required CLIs to run the scripts. The scripts are meant to be run sequentially, but it is an indication and they are not idempotent. If you want to run them please run

```bash
az login
```

as first step. This kind of setup is using preview features (at the time of writing), please be careful, I'm not suggesting that it is a good idea to run this for production.
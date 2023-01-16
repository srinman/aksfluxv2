# add extensions to CLI and update
az extension add -n k8s-configuration
az extension add -n k8s-extension
az extension update -n k8s-configuration
az extension update -n k8s-extension
az extension list -o table

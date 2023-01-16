az k8s-configuration flux create -g akswidrg \
-c akswid \
-n cluster-config \
--namespace cluster-config \
-t managedClusters \
--scope cluster \
-u https://github.com/Azure/gitops-flux2-kustomize-helm-mt \
--branch main  \
--kustomization name=infra path=./infrastructure prune=true \
--kustomization name=apps path=./apps/staging prune=true dependsOn=\["infra"\]


# first time - it installs Flux extension and then configures flux
#'Microsoft.Flux' extension not found on the cluster, installing it now. This may take a few minutes...
#'Microsoft.Flux' extension was successfully installed on the cluster
#Creating the flux configuration 'cluster-config' in the cluster. This may take a few minutes...

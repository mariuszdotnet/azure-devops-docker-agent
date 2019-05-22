# Instructions from https://docs.microsoft.com/en-us/azure/aks/kubernetes-walkthrough#create-aks-cluster

# Login to Azure via Azure CLI
az login

# Create Resource Group for AKS Cluster
az group create --name aks-rg --location canadacentral

# Create AKS Cluster
az aks create --resource-group aks-rg --name myAKSCluster --node-count 1 --enable-addons monitoring --generate-ssh-keys

# Install kubectl to interact with AKS Cluster
az aks install-cli

# Configure kubectl to talk to your cluster
az aks get-credentials --resource-group aks-rg --name myAKSCluster

# Tesk connection to AKS cluster with kubectl
kubectl get nodes

# Set Secrets
$AZ_DEVOPS_TOKEN='<YOUR_TOKEN>'
$AZ_DEVOPS_ACCOUNT='https://dev.azure.com/supermarioworld'

# Create Kubernetes Secrets 
kubectl create secret generic az-dev-secrets --from-literal=AZP_TOKEN=$AZ_DEVOPS_TOKEN --from-literal=AZP_URL=$AZ_DEVOPS_ACCOUNT

# Create the container on AKS
kubectl apply -f aks-devops-agent.yml

# Check if new pods were created and are running
kubectl get pods

# Redeploy the pod/app
kubectl delete pod/linux-devops-agent-755bc5688d-64knh
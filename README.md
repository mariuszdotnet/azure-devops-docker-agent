# Azure Devops Docker Agent on AKS

1. Create and build the `Dockerfile`.

2. Build a docker imaged based on your `DockerFile` and the `start.sh` script provide from [here](https://docs.microsoft.com/en-us/azure/devops/pipelines/agents/docker?view=azure-devops).

3. push to a docker registry of your choosing.  You can find my DockerHub image here [mariuszdotnet/dockeragent](https://cloud.docker.com/repository/docker/mariuszdotnet/dockeragent).

4. Create your AKS Cluster with the commands found in `create-aks.ps1`.  Use the Application YAML manifest `aks-devops-agent.yml`.

## Resources

The following resources were used as a reference for creating these scripts:

+ [Running a self-hosted agent in Docker](https://docs.microsoft.com/en-us/azure/devops/pipelines/agents/docker?view=azure-devops)
+ [Quickstart: Deploy an Azure Kubernetes Service (AKS) cluster using the Azure CLI](https://docs.microsoft.com/en-us/azure/aks/kubernetes-walkthrough)
+ [Host your Private VSTS Linux Agent on Azure Kubernetes Service](https://alwaysupalwayson.blogspot.com/2018/05/host-your-private-vsts-linux-agent-in.html)
+ [Containers on Azure](https://github.com/mathieu-benoit/containers-on-azure)
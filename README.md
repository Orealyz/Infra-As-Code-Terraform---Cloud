
# WordPress N-tier Infrastructure on Azure

## Description
This project deploys a 3-tier WordPress infrastructure using Azure and Terraform with environments for `dev` and `prod`.

## Components
- Azure Container Registry (ACR)
- WordPress (Dockerized, hosted in Azure Web App for Linux)
- Azure MySQL Flexible Server

## Deployment Steps
1. Clone the repository
2. Authenticate with Azure CLI: `az login`
3. Select or create a workspace: `terraform workspace new dev`
4. Run:
```bash
terraform init
terraform apply -var="environment=dev"
```

## Notes
- WordPress Docker image is customized (theme/logo).
- Environments use Terraform workspaces.

# Infrastructure WordPress N-tiers sur Azure

## Description
Ce projet permet de déployer une infrastructure WordPress en 3 couches (N-tiers) sur Microsoft Azure à l’aide de Terraform, avec la prise en charge des environnements `dev` et `prod`.

## Composants
- **Azure Container Registry (ACR)** : pour héberger l’image Docker de WordPress personnalisée
- **WordPress** : conteneur Docker hébergé dans une Azure Web App pour Linux
- **Azure MySQL Flexible Server** : base de données pour WordPress

## Étapes de déploiement
1. Cloner le dépôt Git
2. Se connecter à Azure via la CLI: `az login`
3. Sélectionner ou créer le workspace : `terraform workspace new dev`
4. Run:
```bash
terraform init
terraform apply -var="environment=dev"
```



# Rapport Technique - Déploiement WordPress N-tier sur Azure

## Choix Techniques
- Utilisation de Terraform pour l'IaC (modulaire, variables)
- Azure Container Registry pour héberger l'image Docker
- Azure Web App pour héberger l'application WordPress
- Base de données Azure MySQL Flexible Server sécurisée

## Problèmes rencontrés
- Configuration réseau pour restreindre l'accès à MySQL uniquement à la Web App
- Authentification entre ACR et la Web App

## Environnement
- Azure CLI + Terraform >= 1.3
- GitHub pour le versionnement

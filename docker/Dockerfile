
FROM wordpress:latest

# Exemple de personnalisation : ajouter un thème ou logo
COPY ./custom-theme /var/www/html/wp-content/themes/custom-theme

# Activation du thème personnalisé (exemple basique)
RUN chown -R www-data:www-data /var/www/html/wp-content/themes/custom-theme

# Utiliser l'image de base UBI9 avec HTTPD
FROM registry.access.redhat.com/ubi9/httpd-24:1-325

# Copier le fichier index.html dans le répertoire approprié
COPY index.html /var/www/html/

# Exposer le port 8080 (par défaut HTTPD utilise le port 8080 sur UBI9)
EXPOSE 8080

# Démarrer le service HTTPD
CMD ["httpd", "-DFOREGROUND"]


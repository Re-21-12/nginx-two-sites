FROM nginx:alpine

# Copiamos nuestras apps Angular a la raíz del servidor
COPY dist/victor /var/www/victor
COPY dist/macario /var/www/macario

# Copiamos la configuración personalizada de nginx
COPY nginx/angular-multi.conf /etc/nginx/conf.d/default.conf

EXPOSE 80
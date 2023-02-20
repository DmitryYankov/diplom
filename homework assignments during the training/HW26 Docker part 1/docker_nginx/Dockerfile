# Pull the minimal debian image
FROM nginx:latest

ENV FOLDER_INDEX="/opt/www/"
ENV FILE_INDEX="index.html"
ENV FOLDER_CONF="/etc/nginx/"
ENV FILE_CONF="nginx.conf"

# Copy the Nginx config
COPY ${FILE_INDEX} ${FOLDER_INDEX}
COPY ${FILE_CONF} ${FOLDER_CONF}


# Expose the port for access
EXPOSE 80

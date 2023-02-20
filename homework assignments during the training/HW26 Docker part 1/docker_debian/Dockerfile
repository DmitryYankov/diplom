# Pull the minimal debian image
FROM debian:11

# Install Nginx
RUN apt-get update -y
RUN apt-get install nginx -y

ENV FOLDER_INDEX="/opt/www/"
ENV FILE_INDEX="index.html"
ENV FOLDER_CONF="/etc/nginx/"
ENV FILE_CONF="nginx.conf"

# Copy the Nginx config
COPY ${FILE_INDEX} ${FOLDER_INDEX}
COPY ${FILE_CONF} ${FOLDER_CONF}

# Expose the port for access
EXPOSE 80

# Run the Nginx server
ENTRYPOINT [ "nginx", "-g", "daemon off;" ]

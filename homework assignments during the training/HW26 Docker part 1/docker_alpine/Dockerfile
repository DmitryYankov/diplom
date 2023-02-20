# Pull the minimal alpine image
FROM alpine:latest

# Install Nginx
RUN apk update
RUN apk add nginx

ENV FOLDER_INDEX="/opt/www/"
ENV FILE_INDEX="index.html"
ENV FOLDER_CONF="/etc/nginx/"
ENV FILE_CONF="nginx.conf"

# Copy the Nginx config
COPY --chown=nginx:nginx ${FILE_INDEX} ${FOLDER_INDEX}
COPY --chown=nginx:nginx ${FILE_CONF} ${FOLDER_CONF}

# Expose the port for access
EXPOSE 80

# Run the Nginx server
CMD [ "/usr/sbin/nginx", "-g", "daemon off;" ]

# Base image
FROM alpine:3.23

# Install tools required
RUN apk --no-cache add bash certbot curl

# Copy scripts
WORKDIR /scripts
COPY ./scripts /scripts
RUN chmod -R +x /scripts

# Image starting command
CMD ["/bin/bash", "/scripts/start.sh"]

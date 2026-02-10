# Base image
FROM alpine:3.23

# Install tools required
RUN apk --no-cache add su-exec bash certbot curl

# Copy scripts
WORKDIR /scripts
COPY ./scripts /scripts
RUN chmod -R +x /scripts

CMD ["/bin/bash", "/scripts/entrypoint.sh"]

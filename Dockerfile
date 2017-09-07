
# =======================================================================
#
# Terraform command with custom features like file inclusions.
#
# @see https://github.com/AlbanMontaigu/docker-terraform
# @see https://github.com/AlbanMontaigu/docker-terraform
# =======================================================================

# Base image
FROM alpine:3.6

# Environment variables
ENV TERRAFORM_VERSION="0.10.4"

# System preparation & terraform installation
RUN apk --no-cache add wget ca-certificates unzip git bash m4 && \
    wget -q -O /terraform.zip "https://releases.hashicorp.com/terraform/${TERRAFORM_VERSION}/terraform_${TERRAFORM_VERSION}_linux_amd64.zip" && \
    unzip /terraform.zip -d /bin && \
    apk del --purge wget ca-certificates unzip && \
    rm -rf /var/cache/apk/* /terraform.zip

# Volumes and workdir configuration
VOLUME ["/data"]
WORKDIR /data

# Entrypoint to enable live customization
COPY docker-entrypoint.sh /docker-entrypoint.sh

# Main command
ENTRYPOINT ["/docker-entrypoint.sh"]

# Default flags for the main command
CMD ["--help"]

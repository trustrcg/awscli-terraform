FROM hashicorp/terraform:latest

RUN apk add --no-cache \
    aws-cli \
    bash \
    jq

ENTRYPOINT ["/bin/bash"]

FROM hashicorp/terraform:1.10.1 as tf

FROM alpine:3.20

RUN apk add --no-cache \
    aws-cli \
    ca-certificates \
    git \
    groff \
    openssh-client \
    tzdata \
    && update-ca-certificates

COPY --from=tf /bin/terraform /bin/terraform

ENTRYPOINT ["/bin/sh", "-c"]
FROM alpine:3.13

ENV UID=991 \
    GID=991 \
    USER=openssh

LABEL description="openssh based on alpine" \
      tags="latest" \
      maintainer="Magicalex <magicalex@mondedie.fr>"

RUN apk add --no-progress --no-cache \
    openssh \
    s6 \
    su-exec \
    rsync

COPY rootfs /
RUN chmod +x /usr/local/bin/startup
EXPOSE 2222
ENTRYPOINT ["/usr/local/bin/startup"]

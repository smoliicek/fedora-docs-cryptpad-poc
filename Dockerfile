FROM quay.io/fedora/fedora:44 AS sso
RUN dnf install -y git && \
  git clone --depth 1 https://github.com/cryptpad/sso /sso && \
  rm -rf /sso/.git

FROM docker.io/cryptpad/cryptpad:latest
USER root
COPY --from=sso /sso /cryptpad/lib/plugins/sso
RUN chgrp -R 0 /cryptpad && \
  chmod -R g=u /cryptpad
USER 4001

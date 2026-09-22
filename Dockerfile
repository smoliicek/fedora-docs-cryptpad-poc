FROM docker.io/cryptpad/cryptpad:latest
USER root
RUN chgrp -R 0 /cryptpad && \
  chmod -R g=u /cryptpad
USER 4001

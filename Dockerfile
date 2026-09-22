FROM docker.io/etherpad/etherpad:latest
RUN chgrp -R 0 /opt/etherpad-lite && \
  chmod -R g=u /opt/etherpad-lite

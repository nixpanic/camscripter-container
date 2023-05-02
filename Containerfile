FROM quay.io/fedora/fedora:latest

RUN true \
  && dnf -y install npm \
  && npm install --global shelljs camscripter-raspberry \
  && camscripter-unregister \
  && true

EXPOSE 52520
ENTRYPOINT ["camscripter-run"]

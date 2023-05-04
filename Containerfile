FROM quay.io/fedora/fedora:latest

ADD package.json package-lock.json /opt/camscripter-container/

WORKDIR /opt/camscripter-container

RUN true \
  && dnf -y install npm \
  && npm install \
  && pushd / \
  && cp --symbolic-link ${OLDPWD}/node_modules/.bin/* /usr/local/bin/ \
  && popd \
  && camscripter-unregister \
  && true

EXPOSE 52520
ENTRYPOINT ["camscripter-run"]

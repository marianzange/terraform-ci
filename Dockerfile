FROM hashicorp/terraform:0.12.26

RUN apk add --update --no-cache \
  make \
  python3 \
  musl-dev \
  && pip3 install checkov --no-cache-dir checkov \
  && wget https://github.com/instrumenta/conftest/releases/download/v0.17.1/conftest_0.17.1_Linux_x86_64.tar.gz \
  && tar xzf conftest_0.17.1_Linux_x86_64.tar.gz \
  && mv conftest /usr/local/bin \
  && rm conftest_0.17.1_Linux_x86_64.tar.gz

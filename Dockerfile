FROM hashicorp/terraform:0.13.0-beta2

RUN apk add --update --no-cache \
  make \
  jq \
  curl \
  bash \
  ncurses \
  python3 \
  py3-pip \
  && pip install checkov --ignore-installed six --no-cache-dir checkov \
  && wget https://github.com/open-policy-agent/conftest/releases/download/v0.19.0/conftest_0.19.0_Linux_x86_64.tar.gz \
  && tar xzf conftest_0.19.0_Linux_x86_64.tar.gz \
  && mv conftest /usr/local/bin \
  && rm conftest_0.19.0_Linux_x86_64.tar.gz

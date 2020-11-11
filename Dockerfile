FROM hashicorp/terraform:0.13.5

ENV PIP_DISABLE_PIP_VERSION_CHECK=1
ENV PIP_NO_CACHE_DIR=1

RUN apk add --update --no-cache \
  make \
  jq \
  curl \
  bash \
  ncurses \
  python3 \
  py3-pip \
  && pip install checkov==1.0.624 awscli==1.18.175 --ignore-installed six --no-cache-dir --no-build-isolation \
  && wget https://github.com/open-policy-agent/conftest/releases/download/v0.21.0/conftest_0.21.0_Linux_x86_64.tar.gz \
  && tar xzf conftest_0.21.0_Linux_x86_64.tar.gz \
  && mv conftest /usr/local/bin \
  && rm conftest_0.21.0_Linux_x86_64.tar.gz

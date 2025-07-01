FROM buildpack-deps:bookworm-curl@sha256:73a25e8f8c871e734b28064a6a8d2a1974b5fe9445d2fb4b0b0a3a0dc467b3ef

# renovate: datasource=github-releases depName=helmfile/vals extractVersion=^v(?<version>.*)$
ARG VALS_VERSION=0.41.2

RUN \
  mkdir -p /usr/local/bin && \
  curl -fsSL https://github.com/helmfile/vals/releases/download/v${VALS_VERSION}/vals_${VALS_VERSION}_linux_amd64.tar.gz | \
  tar xvzf - -C /usr/local/bin vals

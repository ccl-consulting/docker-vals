FROM buildpack-deps:bookworm-curl@sha256:40c9814cceca9145f1afd1f1fb64e1d908508b9a6f65d4078a2a2fe0e5fc814e

# renovate: datasource=github-releases depName=helmfile/vals extractVersion=^v(?<version>.*)$
ARG VALS_VERSION=0.37.5

RUN \
  mkdir -p /usr/local/bin && \
  curl -fsSL https://github.com/helmfile/vals/releases/download/v${VALS_VERSION}/vals_${VALS_VERSION}_linux_amd64.tar.gz | \
  tar xvzf - -C /usr/local/bin vals

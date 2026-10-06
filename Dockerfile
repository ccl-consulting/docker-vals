FROM buildpack-deps:bookworm-curl@sha256:a74523d7cca2436f4e3b6f5e47049d1830efbf473c33ebdf5a666f6f77425ebf

# renovate: datasource=github-releases depName=helmfile/vals extractVersion=^v(?<version>.*)$
ARG VALS_VERSION=0.44.0

RUN \
  mkdir -p /usr/local/bin && \
  curl -fsSL https://github.com/helmfile/vals/releases/download/v${VALS_VERSION}/vals_${VALS_VERSION}_linux_amd64.tar.gz | \
  tar xvzf - -C /usr/local/bin vals

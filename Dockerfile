FROM buildpack-deps:bookworm-curl@sha256:bce3d1c214e7bdc179b6b9a8caa42f9ed0b9adebb56eb5acd119df9ae7983834

# renovate: datasource=github-releases depName=helmfile/vals extractVersion=^v(?<version>.*)$
ARG VALS_VERSION=0.42.0

RUN \
  mkdir -p /usr/local/bin && \
  curl -fsSL https://github.com/helmfile/vals/releases/download/v${VALS_VERSION}/vals_${VALS_VERSION}_linux_amd64.tar.gz | \
  tar xvzf - -C /usr/local/bin vals

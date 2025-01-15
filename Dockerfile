FROM buildpack-deps:bookworm-curl@sha256:104f8217967876111a4e8f72495f5f0989a2d6b9c2b91622ddf66e7371df6e36

# renovate: datasource=github-releases depName=helmfile/vals extractVersion=^v(?<version>.*)$
ARG VALS_VERSION=0.37.5

RUN \
  mkdir -p /usr/local/bin && \
  curl -fsSL https://github.com/helmfile/vals/releases/download/v${VALS_VERSION}/vals_${VALS_VERSION}_linux_amd64.tar.gz | \
  tar xvzf - -C /usr/local/bin vals

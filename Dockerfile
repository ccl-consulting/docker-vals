FROM buildpack-deps:bookworm-curl@sha256:58021c2a0204361b62a23d2e0244d144d74c29af2d678e2a1f7e6611885d6949

# renovate: datasource=github-releases depName=helmfile/vals extractVersion=^v(?<version>.*)$
ARG VALS_VERSION=0.44.0

RUN \
  mkdir -p /usr/local/bin && \
  curl -fsSL https://github.com/helmfile/vals/releases/download/v${VALS_VERSION}/vals_${VALS_VERSION}_linux_amd64.tar.gz | \
  tar xvzf - -C /usr/local/bin vals

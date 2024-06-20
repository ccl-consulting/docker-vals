FROM busybox

# renovate: datasource=github-releases depName=helmfile/vals extractVersion=^v(?<version>.*)$
ARG VALS_VERSION=0.37.2

RUN wget -O - https://github.com/helmfile/vals/releases/download/v${VALS_VERSION}/vals_${VALS_VERSION}_linux_amd64.tar.gz | tar xvzf - vals -C /

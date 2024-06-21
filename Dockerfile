FROM buildpack-deps:bookworm-curl@sha256:26f797741018701856083d5936027cf8433ec952fac9be25a45097c1ed5661d3

RUN \
  mkdir -p /usr/local/bin && \
  curl -fsSL https://github.com/aslafy-z/vals/releases/download/v0.37.2-24-gfe7e408/vals-linux-amd64 -o /usr/local/bin/vals

FROM busybox

RUN wget -O - https://github.com/helmfile/vals/releases/download/v0.37.2/vals_0.37.2_linux_amd64.tar.gz | tar xvzf - vals -C /

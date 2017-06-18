FROM debian:stretch
MAINTAINER Leandro Lisboa Penz <lpenz@lpenz.org>

# install debian packages:
ENV DEBIAN_FRONTEND noninteractive
RUN set -x -e; \
    apt-get update; \
    apt-get install -y --no-install-recommends \
        python-pip python-setuptools python-wheel \
        python-yaml python-jinja2 python-markdown \
        flake8 shellcheck \
        linkchecker \
        vim time curl \
        ninja-build \
        texlive texlive-publishers texlive-pictures texlive-latex-extra texlive-fonts-extra cm-super \
        pandoc \
        awscli \
        gosu sudo

# setup sudo
RUN set -x -e; \
    echo 'ALL ALL=NOPASSWD:ALL' > /etc/sudoers.d/all; \
    chmod 0400 /etc/sudoers.d/all

# install pip packages:
RUN set -x -e; \
    pip install \
        py3kwarn==0.4.4

# setup entrypoint with user UID/GID from host
RUN set -x -e; \
    (\
    echo '#!/bin/bash'; \
    echo 'MY_UID=${MY_UID:-1000}'; \
    echo 'set -x -e'; \
    echo 'useradd -M -u "$MY_UID" -o user'; \
    echo 'chown user:user /home/user'; \
    echo 'cd /home/user/work'; \
    echo 'exec gosu user "${@:-/bin/bash}"'; \
    ) > /usr/local/bin/entrypoint.sh; \
    chmod a+x /usr/local/bin/entrypoint.sh
ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]

CMD ["ninja","-v"]

# If your UID is 1000, you can simply run the container as
# docker run -it --rm -v $PWD:/home/user/work cv
# otherwise, run it as:
# docker run -it --rm -v $PWD:/home/user/work -e MY_UID=$UID cv

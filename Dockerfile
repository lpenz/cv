FROM debian:stretch
MAINTAINER Leandro Lisboa Penz <lpenz@lpenz.org>

ENV DEBIAN_FRONTEND noninteractive
RUN set -e -x; \
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
        locales

# setup su and locale
RUN set -x -e; \
    sed -i '/pam_rootok.so$/aauth sufficient pam_permit.so' /etc/pam.d/su; \
    echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; \
    locale-gen
ENV LC_ALL=en_US.UTF-8

# install pip packages:
RUN set -x -e; \
    pip install \
        py3kwarn==0.4.4

CMD ["ninja","-v"]

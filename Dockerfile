FROM debian:buster
LABEL maintainer="Fernando Luz <prof.fernando.luz@gmail.com>"

ENV DEBIAN_FRONTEND noninteractive
RUN set -e -x; \
    apt-get update; \
    apt-get install -y --no-install-recommends \
        pandoc ninja-build \
        texlive texlive-latex-extra cm-super \
        python3-yaml python3-jinja2 \
        locales

# setup su and locale
RUN set -x -e; \
    sed -i '/pam_rootok.so$/aauth sufficient pam_permit.so' /etc/pam.d/su; \
    echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; \
    locale-gen
ENV LC_ALL=en_US.UTF-8

CMD ["ninja","-v"]

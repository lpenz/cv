FROM nixos/nix
MAINTAINER Leandro Lisboa Penz <lpenz@lpenz.org>

RUN set -x -e; \
    nix-channel --add https://nixos.org/channels/nixpkgs-unstable nixpkgs; \
    nix-channel --update; \
    nix-env -i shadow su-exec; \
    true

COPY default.nix /

# RUN set -x -e; \
#     df -h; \
#     nix-shell --command true; \
#     true

RUN set -x -e; \
    mkdir /target

# setup entrypoint with user UID/GID from host
RUN set -x -e; \
    (\
    echo '#!/bin/bash'; \
    echo 'MY_UID=${MY_UID:-1000}'; \
    echo 'set -x -e'; \
    echo 'adduser -D -u "$MY_UID" user'; \
    echo 'chown -R user:user /home/user /target'; \
    echo 'echo . /nix/var/nix/profiles/default/etc/profile.d/nix.sh >> /home/user/.bashrc'; \
    echo 'cd /target'; \
    echo 'exec su-exec user "${@:-/bin/bash -i}"'; \
    ) > /usr/local/bin/entrypoint.sh; \
    chmod a+x /usr/local/bin/entrypoint.sh
ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]

CMD ["nix-build","-v"]

# If your UID is 1000, you can simply run the container as
# docker run -it --rm -v $PWD:/target cv
# otherwise, run it as:
# docker run -it --rm -v $PWD:/target -e MY_UID=$UID cv

FROM archlinux:base-devel
LABEL maintainer="Ranadeep B <mail [at] rnbguy [dot] at>"

# install dependencies
RUN pacman -Syu openssh --needed --noconfirm

# setup ~/.ssh/authorized_keys
RUN mkdir -p ~/.ssh
RUN touch ~/.ssh/authorized_keys
RUN chmod 600 ~/.ssh/authorized_keys

# expore sshd listen port
EXPOSE 22

CMD [ ! -z "${SSH_PUBKEY}" ] && ssh-keygen -A && echo "${SSH_PUBKEY}" > ~/.ssh/authorized_keys && /usr/bin/sshd -D

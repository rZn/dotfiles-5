FROM archlinux/base:latest
# Locales keyboard
RUN echo "fr_FR.UTF-8 UTF-8" > /etc/locale.gen \
 && locale-gen \
 && echo 'LANG="fr_FR.UTF-8"' > /etc/locale.conf
ENV LANG="fr_FR.UTF-8"
# Archlinux Deps
RUN pacman -Syu --noconfirm \ 
      sudo \
      binutils \
      util-linux \
      fakeroot \
      file \
      python \
      yajl \
      make \
      gcc \
      pkg-config \
      which \
      perl \
      automake \
      autoconf \
      gettext \
      patch \
      xorg-server-xephyr 
ENV PATH="${PATH}:/usr/bin/core_perl"
# Project deps
RUN pacman -S --noconfirm \ 
      ansible \
      jshon \
      git \
      fish
# Fix tmp dir perms
RUN chmod 1777 /tmp
# Create test user
RUN useradd -m user \
 && chown -R user:user /home/user \
 && echo -e "user\nuser" | passwd user
RUN echo "user ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers 
# User run
USER user
WORKDIR /home/user/
ENV LANG="fr_FR.UTF-8"
COPY . .
ENTRYPOINT /bin/bash

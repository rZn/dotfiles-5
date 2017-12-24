FROM archlinux/base AS build
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
      xorg-server-xephyr || df -h
ENV PATH="${PATH}:/usr/bin/core_perl"
# Project deps
RUN pacman -S --noconfirm \ 
      ansible \
      jshon \
      git
# Create test user
RUN useradd -m test 2> /dev/null
RUN echo "test ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers 
# Fix tmp dir perms
RUN chmod 1777 /tmp
# User run
USER test
WORKDIR /home/test/
RUN git clone --recursive https://github.com/eoli3n/dotfiles
RUN cd /tmp; curl -o PKGBUILD https://aur.archlinux.org/cgit/aur.git/plain/PKGBUILD?h=packer-git
RUN cd /tmp; makepkg PKGBUILD --install --needed --noconfirm
RUN cd /home/test/dotfiles; ./install.sh desktop
RUN echo -e "vagrant\n/usr/bin/zsh" | chsh

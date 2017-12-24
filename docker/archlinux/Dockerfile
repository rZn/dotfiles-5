FROM archlinux/base AS build
RUN pacman -Syu --noconfirm && pacman -S --noconfirm \ 
      ansible \
      jshon \
      git \
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
      xorg-server-xephyr
ENV PATH="${PATH}:/usr/bin/core_perl"
RUN useradd -m test 2> /dev/null
RUN echo "test ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers 
RUN chmod 1777 /tmp
USER test
WORKDIR /home/test/
RUN git clone --recursive https://github.com/eoli3n/dotfiles
RUN cd /tmp; curl -o PKGBUILD https://aur.archlinux.org/cgit/aur.git/plain/PKGBUILD?h=packer-git
RUN makepkg PKGBUILD --install --needed --noconfirm
RUN cd /home/test/dotfiles; ./install.sh desktop
RUN echo -e "vagrant\n/usr/bin/zsh" | chsh

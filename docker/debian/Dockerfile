FROM debian:stable
# Locales keyboard
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* \
    && localedef -i fr_FR -c -f UTF-8 -A /usr/share/locale/locale.alias fr_FR.UTF-8
ENV LANG fr_FR.UTF-8
# Debian Deps
RUN apt-get update && apt-get install -y \ 
      sudo \
      binutils \
      util-linux \
      fakeroot \
      file \
      python \
      make \
      gcc \
      pkg-config \
      perl \
      gnupg2
ENV PATH="${PATH}:/usr/bin/core_perl"
# Project deps
RUN echo 'deb http://ppa.launchpad.net/ansible/ansible/ubuntu trusty main' >> /etc/apt/sources.list \
 && apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 93C4A3FD7BB9C367
RUN apt-get update && apt-get install -y \ 
      ansible \
      git
# Create test user
RUN useradd -m test \
 && chown -R test:test /home/test \
 && echo "test\ntest" | passwd test
RUN echo "test ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers 
# User run
USER test
WORKDIR /home/test/
ENV LANG="fr_FR.UTF-8"
RUN git clone --recursive https://github.com/eoli3n/dotfiles
RUN cd /home/test/dotfiles; ./install.sh server | tee ansible.log
RUN sudo chsh -s '/usr/bin/zsh' test
ADD test.sh .
ENTRYPOINT /usr/bin/zsh

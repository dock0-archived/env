FROM docker.pkg.github.com/dock0/ssh/ssh:20200721-32a6b23
MAINTAINER akerl <me@lesaker.org>
RUN pacman -S --noconfirm --needed cpio dnsutils htop lockfile-progs lsof mtr net-tools whois zsh neovim
RUN usermod --shell /usr/bin/zsh $ADMIN
RUN su - $ADMIN -c "git clone git://github.com/akerl/....git /home/$ADMIN/..."
RUN su - $ADMIN -c '.../... conf https://raw.githubusercontent.com/akerl/dotfiles/master/.dotdotdot.conf'
RUN su - $ADMIN -c '.../... supi'

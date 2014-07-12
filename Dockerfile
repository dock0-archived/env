FROM dock0/ssh
MAINTAINER akerl <me@lesaker.org>
RUN pacman -Syu --noconfirm --needed \
    cpio dnsutils htop lockfile-progs lsof mtr net-tools \
    nmap python-pip ruby strace tar tcpdump wget whois zsh
RUN usermod --shell /usr/bin/zsh $ADMIN
RUN git clone git://github.com/ingydotnet/....git /home/$ADMIN/...
ADD dotdotdot.conf /home/$ADMIN/.../conf
ADD known_hosts /home/$ADMIN/.ssh/known_hosts
ADD zshrc /home/$ADMIN/.zshrc

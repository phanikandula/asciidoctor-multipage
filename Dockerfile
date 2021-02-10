FROM ruby

RUN apt update \
    && apt install -y sudo wget vim \
    && adduser --disabled-password --gecos "" devuser \
    && usermod -a -G sudo devuser \
    && echo "%sudo   ALL=(ALL:ALL) NOPASSWD: ALL" >> /etc/sudoers.d/no_passwd_sudo

WORKDIR /home/devuser/app
USER devuser

CMD ["bash"]
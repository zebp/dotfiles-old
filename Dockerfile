FROM debian:latest

WORKDIR /dotfiles

RUN apt update
RUN DEBIAN_FRONTEND="noninteractive" apt-get -y install tzdata
RUN apt install -y curl git zsh nodejs unzip

COPY . .

RUN chmod +x ./install.sh

CMD ["/bin/bash"]1
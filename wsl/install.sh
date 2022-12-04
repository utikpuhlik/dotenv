#!/bin/bash
apt-get update
apt-get upgrade \
&& sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" \
&& curl -sS https://starship.rs/install.sh | sh \
&& mkdir -p ~/.config && touch ~/.config/starship.toml \
&& git clone https://github.com/zsh-users/zsh-syntax-highlighting.git "${ZSH_CUSTOM:-~/.oh-my-zsh/custom}"/plugins/zsh-syntax-highlighting \
&& git clone https://github.com/zsh-users/zsh-autosuggestions "${ZSH_CUSTOM:-~/.oh-my-zsh/custom}"/plugins/zsh-autosuggestions \
&& git clone https://github.com/agkozak/zsh-z "${ZSH_CUSTOM:-~/.oh-my-zsh/custom}"/plugins/zsh-z \
&& apt install bat \
&& mkdir -p ~/.local/bin \
&& ln -s /usr/bin/batcat ~/.local/bin/bat \
&& apt install exa

curl -sSL https://install.python-poetry.org | python3 - \
&& export PATH="/home/${whoami}/.local/bin:$PATH"

curl -OL https://golang.org/dl/go1.19.3.linux-amd64.tar.gz \
&& sudo tar -C /usr/local -xvf go1.19.3.linux-amd64.tar.gz

curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh \
&& source "$HOME/.cargo/env" \
&& apt install build-essential






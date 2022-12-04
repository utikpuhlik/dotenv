1. install oh-my-zsh
https://itsfoss.com/reset-linux-password-wsl/

sudo apt-get update
sudo apt install zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

* Download a Nerd-Font - already in Windows Terminal *

2. install starship
https://starship.rs/guide/#%F0%9F%9A%80-installation

# Make config toml
https://starship.rs/config/#prompt
mkdir -p ~/.config && touch ~/.config/starship.toml

3. install plugins:
# download syntax highlighting extension
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# install autocompletions extension
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# download the plugin then update your ~/.zshrc file
git clone https://github.com/agkozak/zsh-z ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-z

BAT - https://www.cyberciti.biz/open-source/bat-linux-command-a-cat-clone-with-written-in-rust/
(sudo apt install bat)

# add alias
mkdir -p ~/.local/bin
ln -s /usr/bin/batcat ~/.local/bin/bat

EXA - https://github.com/ogham/exa (sudo apt install exa)

Z - https://github.com/agkozak/zsh-z

4. Set alias and add plugins to .zshrc

plugins=(
	git
	zsh-syntax-highlighting
      zsh-autosuggestions
	zsh-z
)

# map exa commands to normal ls commands
alias la="exa -la --icons"
alias ls="exa --icons"
alias lt="exa --tree --icons -a -I '.git|__pycache__|.mypy_cache|.ipynb_checkpoints'"

# Starship
eval "$(starship init zsh)"

5. Setup DevTools (Poetry, GO, Rust)

* Poetry - https://python-poetry.org/docs/
(curl -sSL https://install.python-poetry.org | python3 -)
Add to PATH: Command will appeared after successfull installing of Poetry
# Poetry
export PATH="/home/utikpuhlik/.local/bin:$PATH"

* Golang
curl -OL https://golang.org/dl/go1.19.3.linux-amd64.tar.gz
sha256sum go1.19.3.linux-amd64.tar.gz
sudo tar -C /usr/local -xvf go1.19.3.linux-amd64.tar.gz

### Digital Ocean ###
sudo nano ~/.profile
add - export PATH=$PATH:/usr/local/go/bin
source ~/.profile
go version

### My Version ###
Add into .zshrc:
# Go
export GOROOT=/usr/local/go
export PATH=$PATH:/usr/local/go/bin
export PATH=$PATH:$(go env GOPATH)/bin

* Rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
source "$HOME/.cargo/env"
rustc --version

# Install C++ support:
sudo apt install build-essential


MAIN LINKS:
https://engineeringfordatascience.com/posts/configure_terminal_for_data_science_with_oh_my_zsh/
https://starship.rs/guide/#%F0%9F%9A%80-installation
https://www.digitalocean.com/community/tutorials/how-to-install-go-on-ubuntu-20-04
https://go.dev/doc/install
https://github.com/sharkdp/bat
https://www.youtube.com/watch?v=49pec7Mm7OE

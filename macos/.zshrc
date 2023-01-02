# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# <<< mysql <<<
export PATH=${PATH}:/usr/local/mysql/bin/
# >>> mysql >>>

# Helper (fix typo in commands)
eval $(thefuck --alias)

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="flazz"
# ZSH_THEME="agnoster"
# ZSH_THEME="peepcode"

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
  bundler
  dotenv
  macos
  zsh-autosuggestions
  zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
alias zshconfig="nano ~/.zshrc"
alias dotenv="code ~/dotenv"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# python
alias python=python3

# git
alias gs="git status"
alias gl="git log --oneline --decorate"

# map exa commands to normal ls commands
alias la="exa -la --icons"
alias ls="exa --icons"
alias lt="exa --tree --icons -a -I '.git|__pycache__|.mypy_cache|.ipynb_checkpoints'"

# Move to trash instead of hard delete (Installing with homebrew)
alias rm=trash

# starship prompt
alias gt="starship toggle gcloud disabled" # toggle gcloud info on the prompt

# >>> Starship init >>>
eval "$(starship init zsh)"
# <<< Starship init <<<

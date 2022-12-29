# >>> starship initialize >>>
eval "$(starship init bash)"
# <<< starship initialize <<<

# Python
export PATH=$PATH:/c/Program\ Files/Python310

# Poetry
export PATH=$PATH:$HOME/AppData/Roaming/Python/Scripts

# >>> Golang PATH (*/new-path/bin) >>>
export GOROOT=$HOME/sdk/go1.18.4/bin
export PATH=$PATH:$HOME/sdk/go1.18.4/bin
# https://stackoverflow.com/questions/36869660/git-shell-go-command-not-found
# <<< Golang PATH <<<

# Aliases
# git
alias gs="git status"
alias gl="git log --oneline --decorate"

# https://stackoverflow.com/questions/60580332/poetry-virtual-environment-already-activated

# >>> conda initialize >>>
# Fix encoding error:
# https://stackoverflow.com/questions/59974715/conda-unicodeencodeerror-charmap-codec-cant-encode-character-u2580-in-po
export PYTHONIOENCODING=utf8
# Install conda, conda init bash -> new(bellow) changes in .bash_profile:
# !! Contents within this block are managed by 'conda init' !!
# eval "$('/c/Users/Vadik/anaconda3/Scripts/conda.exe' 'shell.bash' 'hook')"
# <<< conda initialize <<<


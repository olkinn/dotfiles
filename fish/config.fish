# Path to your oh-my-fish.
set fish_path $HOME/.oh-my-fish

# Path to your custom folder (default path is ~/.oh-my-fish/custom)
#set fish_custom $HOME/dotfiles/oh-my-fish

# Load oh-my-fish configuration.
. $fish_path/oh-my-fish.fish

# Custom plugins and themes may be added to ~/.oh-my-fish/custom
# Plugins and themes can be found at https://github.com/oh-my-fish/
Theme 'cbjohnson'
Plugin 'theme'
Plugin 'grc'
Plugin 'rbenv'
Plugin 'z'
# Private stuff
source ~/.private/private.fish

# Aliases
alias :q=exit
alias :wq=exit
alias :e=vim
alias gs="git status"
alias gc="git commit -m"
alias gl="git lg"
alias ga="git add"
alias gd="git diff"
alias gp="git push"
alias l="ls -la"

# set -g __fish_git_prompt_char_dirtystate '+'

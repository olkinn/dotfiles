source ~/dev/dotfiles/.private.fish

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

set -g __fish_git_prompt_char_dirtystate '+'

# thefuck --alias | source

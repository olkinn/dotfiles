source ~/dev/dotfiles/.private.fish

if status is-interactive
    # Commands to run in interactive sessions can go here
end

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

# rbenv
status --is-interactive; and source (rbenv init -|psub)


fish_add_path /opt/homebrew/bin

fish_add_path /opt/homebrew/opt/elasticsearch@6/bin
fish_add_path /opt/homebrew/opt/node@14/bin
fish_add_path /Users/olkinn/.emacs.d/bin

thefuck --alias | source

if status is-interactive
    # Commands to run in interactive sessions can go here
end

set -g fish_key_bindings fish_vi_key_bindings
set -g fish_greeting

alias ns="nix-search-tv print | fzf --preview 'nix-search-tv preview {}' --scheme history"
alias nd='nix develop --command fish'
alias inv='nvim $(fzf -m --preview="bat --color=always {}")'
alias fzf='fzf -m --preview="bat --color=always {}"'
alias lt='eza -T -L1 --icons'
alias ltt='eza -T -L2 --icons'
alias lt3='eza -T -L3 --icons'
alias c='clear'
alias y='yazi'
alias nv='nvim'
alias lg='lazygit'
alias gc='git clone'

# disable ctrl i tab Commands
function fish_user_key_bindings
    bind \ci ''
end
atuin init --disable-up-arrow fish | source

export EDITOR=nvim
export VISUAL=nvim
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

# Start tmux
# tmux

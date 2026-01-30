if status is-interactive
    # Commands to run in interactive sessions can go here
end

alias tree='tree --charset utf-8'
alias inv='nvim $(fzf -m --preview="bat --color=always {}")'
alias fzf='fzf -m --preview="bat --color=always {}"'
alias y='yazi'
alias nv='nvim'
alias gc='git clone'
alias lg='lazygit'
alias lt='eza -T -L1 --icons'
alias ltt='eza -T -L2 --icons'
alias lt3='eza -T -L3 --icons'
# alias ns="nix-search-tv print | fzf --preview 'nix-search-tv preview {}' --scheme history"
# alias nd 'nix develop --command fish'

set -g fish_key_bindings fish_vi_key_bindings
set -g fish_greeting

# disable ctrl i tab Commands
function fish_user_key_bindings
    bind \ci ''
end

export EDITOR=nvim
export VISUAL=nvim

starship init fish | source
atuin init --disable-up-arrow fish | source
zoxide init fish | source
set -gx PATH ~/.npm-global/bin $PATH
# Start tmux
tmux
# Delay fastfetch by 2 seconds
sleep 1 && fastfetch

#add bun
set -gx PATH $PATH ~/.bun/bin

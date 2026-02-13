pkgs need:

```
git lazygit neovim starship zoxide atuin fish nushell yazi tmux fzf fastfetch stow
```

To make fish default in arch

```
chsh -s /usr/bin/fish
```

Also clone tpm if you haven't already

```
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```

clone the repo

```
git clone https://github.com/strizee/my-dots.git
```

After installing all the pkgs run this following commannd inside the dotfiles dir:

```
stow --adopt fastfetch fish nushell nvim starship lazygit
stow tmux
```

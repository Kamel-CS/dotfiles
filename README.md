# Dotfiles

This repository contains my personal configuration files for setting up my development environment across my devices.
These dotfiles are managed in a way that supports sharing configuration with machine-specific customizations using **GNU Stow**, which makes it easier to setup.

### 1. Clone the repo
```shell
git clone https://github.com/Kamel-CS/dotfiles.git ~/dotfiles
```

### 2. Setup with GNU Stow

- **Delete your current config files**:
```shell
cd ~/.config/
rm -rf nvim rofi polybar picom i3
```

- **Navigate to the cloned repo**:
```shell
cd ~/dotfiles/
```

- **Stow the directories**:
```shell
stow nvim hyprland kitty ...
```

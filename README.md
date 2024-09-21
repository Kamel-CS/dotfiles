# Dotfiles

This repository contains my personal configuration files for setting up my development environment across my devices.
These dotfiles are managed in a way that supports sharing configuration with machine-specific customizations using **GNU Stow**, which makes it easier to setup.


## Prerequisites
- **GNU Stow**: For managing symbolic links.
- **i3**: The window manager.
- **Polybar**: Status bar for i3.
- **Picom**: Compositor for windows effects.
- **feh**: Image viewer and background setter.
- **Flameshot** (optional): For screenshots.
- **ripgrep, Node.js**: For Neovim.

---


## Step 1: Setup Rofi

Since **Rofi** requires additional setup (installing fonts and other dependencies), follow these steps before proceeding with the dotfiles setup.

1. **Clone Rofi's collection of custom configurations repository**:
```shell
$ git clone --depth=1 https://github.com/adi1090x/rofi.git
```

2. **Change to cloned directory and make `setup.sh` executable**:
```shell
cd rofi
chmod +x setup.sh
```

3. **Run `setup.sh`**:
```shell
./setup.sh
```

4. **Remove the cloned repo**:
```shell
rm -rf ~/rofi/
```



## Step 2: Clone the Dotfiles Repository:

```shell
git clone https://github.com/Kamel-CS/dotfiles.git ~/dotfiles
```



## Step 3: Set Up With GNU Stow

1. **Delete your current config files**:
```shell
cd ~/.config/
rm -rf nvim rofi polybar picom i3
```

2. **Navigate to the cloned repo**:
```shell
cd ~/dotfiles/
```

3. **Stow the directories**:
```shell
stow nvim i3 polybar picom rofi
```

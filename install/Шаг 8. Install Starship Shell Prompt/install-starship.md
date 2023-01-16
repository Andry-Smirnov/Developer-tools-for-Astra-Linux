# [Install Starship Shell Prompt for Bash / Zsh / Fish | ComputingForGeeks](https://computingforgeeks.com/install-starship-shell-prompt-for-bash-zsh-fish/)

# Install Starship Shell Prompt for Bash / Zsh / Fish

I’m a big fan of fast shell prompts for “**astronauts**“. Starship is the minimal, blazing fast, and extremely customizable prompt for any shell!. It works for Bash, Zsh and Fish shells. The Starship shell prompt is designed to only show the information you need while you’re working, while staying sleek and out of the way.

[![install configure starship shell prompt linux](https://computingforgeeks.com/wp-content/uploads/2019/09/install-configure-starship-shell-prompt-linux.png?ezimgfmt=rs%3Adevice%2Frscb23-1 "Install Starship Shell Prompt for Bash / Zsh / Fish 1")](https://computingforgeeks.com/wp-content/uploads/2019/09/install-configure-starship-shell-prompt-linux.png?ezimgfmt=rs%3Adevice%2Frscb23-1)

I’ve used [Pure](https://github.com/sindresorhus/pure) and [Spaceship](https://github.com/denysdovhan/spaceship-prompt) before and this is the right time to give a different Prompt a try. We will see how to install Starship shell prompt on different Linux distributions and macOS.

## Step 1: Install Powerline font / FiraCode font

A Powerline font is required. Install it with the commands:
 
```console
# Debian / Ubuntu
sudo apt update
sudo apt install fonts-powerline

# Fedora
sudo dnf install powerline-fonts

# Any other Linux
git clone https://github.com/powerline/fonts.git --depth=1
cd fonts
./install.sh
cd ..
rm -rf fonts
```

For [FiraCode](https://github.com/tonsky/FiraCode) font, install via:

```console
# Debian / Ubuntu
sudo apt install fonts-firacode

# Arch Linux / Manjaro
sudo pacman -S otf-fira-code

# Gentoo
emerge -av media-fonts/fira-code

# Fedora
dnf copr enable evana/fira-code-fonts
dnf install fira-code-fonts
```

## Step 2: Installing Starship cross-shell prompt for astronauts
 
Use one of the methods shared here to install Starship cross-shell prompt for astronauts on your system.

### Install from package manager

```console
# macOS
brew install starship

# Arch
yay -S starship

# Nix
nix-env --install starship

# Termux
pkg install starship
```

For Arch users, see how to use [yay – Best AUR Helper for Arch Linux / Manjaro](https://computingforgeeks.com/yay-best-aur-helper-for-arch-linux-manjaro/)

### Install from pre-compiled binary

For other platforms, download precompiled binary and place it in your `PATH`.

```console
curl -s https://api.github.com/repos/starship/starship/releases/latest \
| grep browser_download_url \
| grep x86_64-unknown-linux-gnu \
| cut -d '"' -f 4 \
| wget -qi -
```

Extract downloaded Archive.

```console
tar xvf starship-*.tar.gz
```

Move the `starship` binary to `/usr/local/bin` directory.

```console
sudo mv starship /usr/local/bin/
```

Check version of starship installed.

```console
$ starship --version
starship 1.4.2
```

## Step 3: Configure Bash / Zsh / Fish Shell

Add the lines below to your shell configuration file.

```console
# Bash
$ vim ~/.bashrc
eval "$(starship init bash)"

# Zsh
$ vim ~/.zshrc
eval "$(starship init zsh)"

# Fish
$ vim ~/.config/fish/config.fish
eval (starship init fish)
```

Source your shell configuration for the changes to update.

```console
source ~/.zshrc
```
You have Starship prompt installed and working.

![Starship with iTerm2 and the Snazzy theme](https://raw.githubusercontent.com/starship/starship/master/media/demo.gif "Install Starship Shell Prompt for Bash / Zsh / Fish 2")

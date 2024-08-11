# nvim preset

## Usage (linux and MacOs)

0. Make sure you have nvim installed: https://github.com/neovim/neovim/blob/master/INSTALL.md

1. Clone the repository into your .config

```
cd ~/.config
git clone https://github.com/shawnschulz/nvim_preset.git
```

2. Rename the folder

```
mv nvim_preset nvim
```

3. Get Packer installed

```
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
```

4. Installing Alacritty (you can use any terminal emulator that supports nerd font icons)

You need rust installed for this one

```
rustup update
cargo install alacritty
```

Alacritty may fail building if you are missing system fonts library. A build failure for alacritty is likely to be from a missing library dependency that is not rust native on your OS.

Ex on linux to install lib dev fonts:

```
sudo apt install libfontconfig1-dev
```

5. Install a nerd font

I like hack: https://github.com/ryanoasis/nerd-fonts/tree/master/patched-fonts/Hack

```
sudo mv ~/Downloads/*.ttf /usr/local/share/fonts/
```

6. Create the alacritty toml

You can copy the default file from the repository

```
mkdir -p ~/.config/alacritty
cp ~/.config/nvim/alacritty.toml ~/.config/alacritty
```

If you didn't use Hack Nerd Font you'll need to change the name of the font in this file to your nerd font.

Use alacritty as your terminal emulator and you should be all set!

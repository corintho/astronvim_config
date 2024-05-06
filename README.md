# AstroNvim personal setup
This is a direct for fomr the official [AstroNvim](https://github.com/AstroNvim/template) template, with the customizations relevant to my personal workflow

**NOTE:** This is for AstroNvim v4+

## 🛠️ Installation

I like to suggest a different approach when testing other people distributions.
For this instance, a backup is not necessary

#### Clone the repository
We are going to use an alternate install location, so you can have a regular install of nvim running alongside this configuration.


```shell
git clone https://github.com/corintho/astronvim_config ~/.config/nvim-astro
```

#### Start Neovim

This runs neovim, telling it to load configuration from a different directory than the default one
```shell
NVIM_APPNAME="nvim-astro" nvim
```

I also suggest that you create an alias in your shell rc file, to make it easier to run this instance
```shell
alias astro='NVIM_APPNAME="nvim-astro" nvim'
```

#### Uninstall
The clean-up process is quite straightforward. If you followed the suggested alias creation as above, you just need to delete the installation and any caches left behind:

```shell
rm ~/.config/nvim-astro
rm ~/.local/share/nvim-astro
rm ~/.local/state/nvim-astro
rm ~/.cache/nvim-astro
```

# AstroNvim personal setup

This is a direct fork from the official [AstroNvim](https://github.com/AstroNvim/template) template, with the customizations relevant to my personal workflow

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

## Customization

To give you more freedom when using this setup and to avoid handling diffs when your opinion diverges from what is built-in here, I added support for patch files and folders, that can be used in two different ways out of the box.

### Regular neovim configuration

You can create a file called `patches.lua` inside the `lua` folder. And that file will be inserted after the `polish.lua` file is executed. This gives you the option to override anything that is defined in the `polish.lua` file.

Alternatively you can create a folder called `patches` with a `init.lua` file inside it. The init file will be executed automatically and can include other files.

### Load as an extra Lazy Plugin

You can create a `patches.lua` file inside the `plugins` folder. If you do so, you can define any overrides you want it to have. This is a default plugin from `layz.nvim` perspective and what is possible or not to override depends on lazy documentation, which can be found [here](https://lazy.folke.io/).

Please note that a folder called `patches` will not work in this context, due to `lazy.nvim` way of working.

### Caveat

In order to support an additional file / folder that does not raise conflicts when changing them, they need to be on `.gitignore`. This means that changes that you do to those files are not tracked. It also means they don't show up on the regular file search `<leader> f f` you need to use the **all** files search `<leader> f F`.

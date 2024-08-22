# `falconite`

Hi, this is my NeoVim config. It's designed for mainly Golang development along with a little bit of C development. 
Although it can be used for any language as such.

This config is uses `lazy.nvim` as a package manager, which is bootstrapped (It will install itself).

![image](https://github.com/user-attachments/assets/2be67311-b3da-402d-99aa-ee6ea06a0180)

# Plugins

It is loads `15` main plugins, which then load their dependencies.

These plugins include `tokyonight` (For theme), `telescope` (Interactive Selection), `FTerm.nvim` (Pop-Up Terminal), `lualine` (Statusline).

Other quality of life plugins include
- `mini.pairs` (For parenthesis matching)
- `nvim-surround` (For adding, removing and editing parenthesis/tags etc)
- `Comment.nvim` (For commenting)
- `miniintro.nvim` (For the dead simple intro screen)

Some fancy features include
- `nvim-lspconfig` (Neovim LSP Config)
- `nvim-cmp` (Autucompletion frontend)
- `nvim-treesitter` (TreeSitter integration)
- `copilot.lua` (AI based code-completion)

A few oddities are
- `conform.nvim` (Auto-formatting without LSP)
- `trouble.nvim` (Better quickfix list)
- `dressing.nvim` (Better UI for non-interactive selection, prompts etc)


# How to use it

To use it simply clone this repo into your config folder (On Linux it's `/home/<username>/.config/nvim`.

```sh
git clone https://github.com/pspiagicw/neovim ~/.config/nvim
```

# Modifying

The repo contains a `flake.nix` file to auto-install any dependenceies you need while editing this config. 
You don't need anything to edit, but these tools might be helpful while editing.

These include
- `stylua` (Lua formatter)
- `lua_ls` (Lua language server)

After you open `nvim`, it should autoinstall everything. Then restart nvim to load all plugins.


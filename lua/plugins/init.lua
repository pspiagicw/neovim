-- ██████╗ ███████╗██████╗ ██╗ █████╗  ██████╗ ██╗ ██████╗██╗    ██╗
-- ██╔══██╗██╔════╝██╔══██╗██║██╔══██╗██╔════╝ ██║██╔════╝██║    ██║
-- ██████╔╝███████╗██████╔╝██║███████║██║  ███╗██║██║     ██║ █╗ ██║
-- ██╔═══╝ ╚════██║██╔═══╝ ██║██╔══██║██║   ██║██║██║     ██║███╗██║
-- ██║     ███████║██║     ██║██║  ██║╚██████╔╝██║╚██████╗╚███╔███╔╝
-- ╚═╝     ╚══════╝╚═╝     ╚═╝╚═╝  ╚═╝ ╚═════╝ ╚═╝ ╚═════╝ ╚══╝╚══╝
--
--
-- Bootstrapping Plugins
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

vim.g.mapleader = '<space>'

require("lazy").setup ({
    { 
        'nvim-telescope/telescope.nvim',
        cmd = 'Telescope',
        dependencies = {
            'nvim-lua/plenary.nvim'
        },
        opts = {
            layout_stratergy = "vertical",
            mappings = {
                i = {
                    ["<C-j>"] = "move_selection_next",
                    ["<C-k>"] = "move_selection_previous",
                    ["jk"] = "close",
                }
            }
        }
    },
    {
        'catppuccin/nvim',
        name = 'catppuccin'
    },
    {
        'nvim-lualine/lualine.nvim',
        config = true,
    },
    { 
        'nvim-treesitter/nvim-treesitter',
    },
    { 'folke/trouble.nvim', cmd = "TroubleToggle"},
    {
        'hrsh7th/nvim-cmp',
        event = 'InsertEnter',
        dependencies = {
            { 'hrsh7th/cmp-nvim-lsp' },
            { 'hrsh7th/cmp-buffer' },
            { 'hrsh7th/cmp-path' },
            { 'hrsh7th/cmp-cmdline' },
        }
    },
    { 
        'numToStr/FTerm.nvim',
        lazy = true,
    },
    {
        'williamboman/mason.nvim',
        config = true,
        cmd = "Mason",
        ft = { "go", "python", "c" }
    },
    { 
        'neovim/nvim-lspconfig' ,
        lazy = true
    },
    { 
        'echasnovski/mini.surround',
        version = false,
        config = true,
    },
    { 
        'echasnovski/mini.pairs',
        version = false,
        config = true,
        event = 'InsertEnter',

    },
    { 
        'echasnovski/mini.comment',
        version = false,
        config = true,
    },

})

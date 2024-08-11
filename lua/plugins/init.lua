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

require("lazy").setup({
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
        'pspiagicw/groom.nvim',
        config = true,
    },
    {
        'nvim-lualine/lualine.nvim',
        config = true,
    },
    {
        'nvim-treesitter/nvim-treesitter',
    },
    {
        'stevearc/dressing.nvim',
        config = true,
    },
    {
        'folke/trouble.nvim',
        cmd = "TroubleToggle",
        opts = {
            icons = false,
        },
    },
    {
        'hrsh7th/nvim-cmp',
        event = 'InsertEnter',
        dependencies = {
            { 'hrsh7th/cmp-nvim-lsp' },
            { 'hrsh7th/cmp-buffer' },
            { 'hrsh7th/cmp-path' },
            { 'hrsh7th/cmp-cmdline' },
            { 'quangnguyen30192/cmp-nvim-tags' },

        }
    },
    {
        'numToStr/FTerm.nvim',
        lazy = true,
    },
    {
        'neovim/nvim-lspconfig',
        lazy = true
    },
    {
        'echasnovski/mini.pairs',
        version = false,
        config = true,
        event = 'InsertEnter',

    },
    {
        "kylechui/nvim-surround",
        version = "*", -- Use for stability; omit to use `main` branch for the latest features
        event = "VeryLazy",
        config = true,
    },
    {
        'numToStr/Comment.nvim',
        config = true,
    },
    {
        "eoh-bse/minintro.nvim",
        config = true,
        lazy = false,
    },

    {
        "zbirenbaum/copilot.lua",
        cmd = "Copilot",
        event = "InsertEnter",
        config = function()
            require("copilot").setup({
                filetypes = {
                    go = true,
                    c = true,
                    ["*"] = false,
                },
                panel = {
                    enabled = false
                },
                suggestion = {
                    enabled = true,
                    auto_trigger = true,
                    accept = false,
                    keymap = {
                        accept = "<M-j>",
                        next = "<M-n>",
                        prev = "<M-p>"
                    }
                }
            })
        end,
    },
    {
        "folke/tokyonight.nvim",
        lazy = false,
        opts = {},
        priority = 1000,
    },
    {
        'stevearc/conform.nvim',
        opts = {
            formatters_by_ft = {
                nix = { "alejandra" },
            },
            notify_on_error = false,
            format_on_save = {
                timeout_ms = 500,
                lsp_fallback = true,
            }
        }

    },
})

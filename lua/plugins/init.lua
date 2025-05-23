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

vim.g.mapleader = "<space>"

require("lazy").setup({
    {
        "nvim-telescope/telescope.nvim",
        cmd = "Telescope",
        dependencies = {
            "nvim-lua/plenary.nvim",
        },
        opts = {
            layout_stratergy = "vertical",
            mappings = {
                i = {
                    ["<C-j>"] = "move_selection_next",
                    ["<C-k>"] = "move_selection_previous",
                    ["jk"] = "close",
                },
            },
        },
    },
    {
        "nvim-lualine/lualine.nvim",
        opts = {
            options = {
                component_separators = '',
                section_separators = { left = '', right = '' },
            },
        },
    },
    {
        "nvim-treesitter/nvim-treesitter",
    },
    {
        "stevearc/dressing.nvim",
        config = true,
    },
    {
        "folke/trouble.nvim",
        config = true,
        cmd = "Trouble",
        dependencies = {
            { "nvim-tree/nvim-web-devicons" },
        },
    },
    {
        "hrsh7th/nvim-cmp",
        event = "InsertEnter",
        dependencies = {
            { "hrsh7th/cmp-nvim-lsp" },
            { "hrsh7th/cmp-path" },
            { "hrsh7th/cmp-buffer" },
            { "hrsh7th/cmp-cmdline" },
            { "quangnguyen30192/cmp-nvim-tags" },
            { "onsails/lspkind.nvim" },
        },
    },
    {
        "numToStr/FTerm.nvim",
        lazy = true,
    },
    {
        "neovim/nvim-lspconfig",
        lazy = true,
    },
    {
        "echasnovski/mini.pairs",
        version = false,
        config = true,
        event = "InsertEnter",
    },
    {
        "kylechui/nvim-surround",
        event = "InsertEnter",
        config = true,
    },
    {
        "numToStr/Comment.nvim",
        event = "InsertEnter",
        config = true,
    },
    {
        "eoh-bse/minintro.nvim",
        config = true,
        lazy = false,
    },
    {
        "folke/tokyonight.nvim",
        lazy = false,
        opts = {},
        priority = 1000,
    },
    {
        "mason-org/mason.nvim",
        config = true,
    },
    {

        "stevearc/conform.nvim",
        ft = { "lua", "c", "nix", "go" },
        opts = {
            formatters_by_ft = {
                nix = { "alejandra" },
                lua = { "stylua" },
                c = { "clang-format" },
                go = { "gofmt" },
            },
            notify_on_error = false,
            format_on_save = {
                timeout_ms = 500,
                lsp_fallback = true,
            },
        },
    },
})

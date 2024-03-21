-- ██████╗ ███████╗██████╗ ██╗ █████╗  ██████╗ ██╗ ██████╗██╗    ██╗
-- ██╔══██╗██╔════╝██╔══██╗██║██╔══██╗██╔════╝ ██║██╔════╝██║    ██║
-- ██████╔╝███████╗██████╔╝██║███████║██║  ███╗██║██║     ██║ █╗ ██║
-- ██╔═══╝ ╚════██║██╔═══╝ ██║██╔══██║██║   ██║██║██║     ██║███╗██║
-- ██║     ███████║██║     ██║██║  ██║╚██████╔╝██║╚██████╗╚███╔███╔╝
-- ╚═╝     ╚══════╝╚═╝     ╚═╝╚═╝  ╚═╝ ╚═════╝ ╚═╝ ╚═════╝ ╚══╝╚══╝
--
--
-- Bootstrapping Plugins
--

local ensure_packer = function()
    local fn = vim.fn
    local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'
    if fn.empty(fn.glob(install_path)) > 0 then
        fn.system({ 'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path })
        vim.cmd [[packadd packer.nvim]]
        return true
    end
    return false
end

local packer_bootstrap = ensure_packer()


return require("packer").startup(function()
    use 'wbthomason/packer.nvim'

    use {
        'nvim-tree/nvim-tree.lua',
        requires = {
            { 'nvim-tree/nvim-web-devicons' }
        },
    }

    use {
        'nvim-telescope/telescope.nvim',
        requires = {
            { 'nvim-lua/plenary.nvim' },
        }
    }


    use { 'catppuccin/nvim', as = 'catppuccin' }

    use { 'nvim-lualine/lualine.nvim' }

    use { 'Mofiqul/dracula.nvim' }

    use { 'miikanissi/modus-themes.nvim' }

    use {
        'stevearc/dressing.nvim',
        config = function()
            require('dressing').setup()
        end
    }

    ------  GENERAL ------

    use {
        'numToStr/Comment.nvim',
        config = function()
            require("Comment").setup()
        end,
    }

    use {
        'windwp/nvim-autopairs',
        config = function()
            require("nvim-autopairs").setup()
        end,
    }

    use {
        'numToStr/FTerm.nvim'
    }

    use {
        'tpope/vim-surround'
    }

    ------ PROGRAMMING ------


    use {
        'hrsh7th/nvim-cmp',
        requires = {
            { 'hrsh7th/cmp-nvim-lsp' },
            { 'hrsh7th/cmp-buffer' },
            { 'hrsh7th/cmp-path' },
            { 'hrsh7th/cmp-cmdline' },
        }
    }

    use {
        'williamboman/mason.nvim',
        config = function()
            require('mason').setup({
                ui = {
                    icons = {
                        package_installed = "✓",
                        package_pending = "➜",
                        package_uninstalled = "✗"
                    }
                }
            })
        end,
    }

    use {
        'neovim/nvim-lspconfig',
    }

    use {
        'nvim-treesitter/nvim-treesitter'
    }

    use {
        'lewis6991/hover.nvim',
        config = function()
            require("hover").setup {
                init = function()
                    require("hover.providers.lsp")
                end,
                preview_opts = {
                    border = 'single'
                }
            }
        end,
    }

    ---------------------- LANGS -------------------
    use {
        'folke/trouble.nvim',
        config = function()
            require("trouble").setup({
                icons = false,
                multiline = true
            })
        end
    }

    if packer_bootstrap then
        require('packer').sync()
    end
end)

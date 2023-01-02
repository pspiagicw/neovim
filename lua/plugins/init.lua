-- ██████╗ ███████╗██████╗ ██╗ █████╗  ██████╗ ██╗ ██████╗██╗    ██╗
-- ██╔══██╗██╔════╝██╔══██╗██║██╔══██╗██╔════╝ ██║██╔════╝██║    ██║
-- ██████╔╝███████╗██████╔╝██║███████║██║  ███╗██║██║     ██║ █╗ ██║
-- ██╔═══╝ ╚════██║██╔═══╝ ██║██╔══██║██║   ██║██║██║     ██║███╗██║
-- ██║     ███████║██║     ██║██║  ██║╚██████╔╝██║╚██████╗╚███╔███╔╝
-- ╚═╝     ╚══════╝╚═╝     ╚═╝╚═╝  ╚═╝ ╚═════╝ ╚═╝ ╚═════╝ ╚══╝╚══╝
--
--
return require("packer").startup(function()

    use 'wbthomason/packer.nvim'

    --------- AESTHETICS -----
    --
    --

    use 'numToStr/Navigator.nvim'


    use {
        'folke/twilight.nvim',
        config = function()
            require("twilight").setup()
        end,
    }

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

    use { 'nvim-telescope/telescope-fzf-native.nvim',
        run = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build' }

    use { 'catppuccin/nvim', as = 'catppuccin' }
    -- Using Packer
    use 'navarasu/onedark.nvim'

    use 'folke/tokyonight.nvim'

    use { 'nvim-lualine/lualine.nvim' }

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
            require('mason').setup()
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

    use {
        'jose-elias-alvarez/null-ls.nvim'
    }

    ---------------------- LANGS -------------------
    use {
        'TheZoq2/neovim-auto-autoread'
    }

    use {
        'epwalsh/obsidian.nvim',
        config = function()
            require("obsidian").setup({
                dir = "/home/pratham/Documents/Notes/Obsidian",
                completion = {
                    nvim_cmp = true,
                }
            })
        end,
    }

end)

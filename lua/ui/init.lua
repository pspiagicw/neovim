-- ██████╗ ███████╗██████╗ ██╗ █████╗  ██████╗ ██╗ ██████╗██╗    ██╗
-- ██╔══██╗██╔════╝██╔══██╗██║██╔══██╗██╔════╝ ██║██╔════╝██║    ██║
-- ██████╔╝███████╗██████╔╝██║███████║██║  ███╗██║██║     ██║ █╗ ██║
-- ██╔═══╝ ╚════██║██╔═══╝ ██║██╔══██║██║   ██║██║██║     ██║███╗██║
-- ██║     ███████║██║     ██║██║  ██║╚██████╔╝██║╚██████╗╚███╔███╔╝
-- ╚═╝     ╚══════╝╚═╝     ╚═╝╚═╝  ╚═╝ ╚═════╝ ╚═╝ ╚═════╝ ╚══╝╚══╝ 

-- require('onedark').setup {
--     style = 'deep'
-- }
-- require('onedark').load()
vim.cmd [[ colorscheme catppuccin-mocha]]

require("lualine").setup {
    options = {
        theme = 'auto',
        section_separators = '',
        component_separators = '',
    }
}

require('nvim-tree').setup()

vim.cmd "let g:neovide_fullscreen=v:false"
vim.cmd "let g:neovide_remember_window_size=v:false"
vim.cmd "let g:neovide_cursor_vfx_mode=''"
vim.cmd "let g:neovide_cursor_animation_length=0"
vim.cmd "let g:neovide_refresh_rate=0"
vim.opt.guifont="JetBrains Mono:h12"

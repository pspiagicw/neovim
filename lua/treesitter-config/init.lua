-- ██████╗ ███████╗██████╗ ██╗ █████╗  ██████╗ ██╗ ██████╗██╗    ██╗
-- ██╔══██╗██╔════╝██╔══██╗██║██╔══██╗██╔════╝ ██║██╔════╝██║    ██║
-- ██████╔╝███████╗██████╔╝██║███████║██║  ███╗██║██║     ██║ █╗ ██║
-- ██╔═══╝ ╚════██║██╔═══╝ ██║██╔══██║██║   ██║██║██║     ██║███╗██║
-- ██║     ███████║██║     ██║██║  ██║╚██████╔╝██║╚██████╗╚███╔███╔╝
-- ╚═╝     ╚══════╝╚═╝     ╚═╝╚═╝  ╚═╝ ╚═════╝ ╚═╝ ╚═════╝ ╚══╝╚══╝
local parser_config = require("nvim-treesitter.parsers").get_parser_configs()

parser_config.fener = {
    install_info = {
        url = "~/code/other-projects/tree-sitter-fener",
        files = { "src/parser.c" }
    },
}
parser_config.hotshot = {
    install_info = {
        url = "~/code/other-projects/tree-sitter-hotshot",
        files = { "src/parser.c" }
    },
    filetype = "ht"
}
vim.filetype.add({ extension = { fn = 'fener', ht = 'hotshot' } })

require("nvim-treesitter.configs").setup({
    indent = {
        enable = false,
    },
    highlight = {
        enable = true,
    },
})

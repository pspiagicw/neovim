-- ██████╗ ███████╗██████╗ ██╗ █████╗  ██████╗ ██╗ ██████╗██╗    ██╗
-- ██╔══██╗██╔════╝██╔══██╗██║██╔══██╗██╔════╝ ██║██╔════╝██║    ██║
-- ██████╔╝███████╗██████╔╝██║███████║██║  ███╗██║██║     ██║ █╗ ██║
-- ██╔═══╝ ╚════██║██╔═══╝ ██║██╔══██║██║   ██║██║██║     ██║███╗██║
-- ██║     ███████║██║     ██║██║  ██║╚██████╔╝██║╚██████╗╚███╔███╔╝
-- ╚═╝     ╚══════╝╚═╝     ╚═╝╚═╝  ╚═╝ ╚═════╝ ╚═╝ ╚═════╝ ╚══╝╚══╝
local parser_config = require("nvim-treesitter.parsers").get_parser_configs()

parser_config.tablegen = {
	install_info = {
		url = "https://github.com/pspiagicw/tree-sitter-tablegen",
		files = { "src/parser.c", "src/scanner.c" },
	},
	filetype = "tablegen",
}

parser_config.fener = {
	install_info = {
		url = "~/code/other-projects/tree-sitter-fener",
		files = { "src/parser.c" },
	},
}
parser_config.hotshot = {
	install_info = {
		url = "~/code/other-projects/tree-sitter-hotshot",
		files = { "src/parser.c" },
	},
	filetype = "ht",
}

parser_config.tremor = {
	install_info = {
		url = "~/code/tree-sitter-tremor",
		files = { "src/parser.c" },
	},
}

vim.filetype.add({ extension = { fn = "fener", ht = "hotshot", tm = "tremor"} })

require("nvim-treesitter.configs").setup({
	ensure_installed = {
		"go",
		"c",
		"vimdoc",
		"lua",
		"query",
		"rust",
		"jsonc",
		"markdown",
		"markdown_inline",
		"cpp",
		"css",
		"bash",
		"editorconfig",
		"gomod",
		"gosum",
		"meson",
		"ninja",
	},
	indent = {
		enable = false,
	},
	highlight = {
		enable = true,
	},
})

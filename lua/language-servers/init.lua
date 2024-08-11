-- ██████╗ ███████╗██████╗ ██╗ █████╗  ██████╗ ██╗ ██████╗██╗    ██╗
-- ██╔══██╗██╔════╝██╔══██╗██║██╔══██╗██╔════╝ ██║██╔════╝██║    ██║
-- ██████╔╝███████╗██████╔╝██║███████║██║  ███╗██║██║     ██║ █╗ ██║
-- ██╔═══╝ ╚════██║██╔═══╝ ██║██╔══██║██║   ██║██║██║     ██║███╗██║
-- ██║     ███████║██║     ██║██║  ██║╚██████╔╝██║╚██████╗╚███╔███╔╝
-- ╚═╝     ╚══════╝╚═╝     ╚═╝╚═╝  ╚═╝ ╚═════╝ ╚═╝ ╚═════╝ ╚══╝╚══╝
local nvim_lsp = require("lspconfig")
local opts = { noremap = true, silent = true }

local on_attach = function(client, bufnr)
	local function buf_set_keymap(...)
		vim.api.nvim_buf_set_keymap(bufnr, ...)
	end

	local function buf_set_option(...)
		vim.api.nvim_buf_set_option(bufnr, ...)
	end

	buf_set_option("omnifunc", "v:lua.vim.lsp.omnifunc")

	buf_set_keymap("n", "gd", ":lua vim.lsp.buf.definition()<CR>", opts)
	buf_set_keymap("n", "<leader>lr", ":lua vim.lsp.buf.rename()<CR>", opts)
	buf_set_keymap("n", "<leader>lc", ":lua vim.lsp.buf.code_action()<CR>", opts)
	buf_set_keymap("n", "<leader>lk", ":lua vim.lsp.buf.hover()<CR>", opts)
	buf_set_keymap("n", "<leader>lf", ":lua vim.lsp.buf.format { async = true }<CR>", opts)
	buf_set_keymap("n", "<leader>lq", ":TroubleToggle<CR>", opts)
	buf_set_keymap("n", "<leader>ll", ":Telescope lsp_workspace_symbols<CR>", opts)
	buf_set_keymap("n", "<leader>le", ":lua vim.diagnostic.open_float()<CR>", opts)
end

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = false
capabilities = require("cmp_nvim_lsp").default_capabilities(capabilities)

nvim_lsp["gopls"].setup({
	on_attach = on_attach,
	flags = {
		debounce_text_changes = 150,
	},
})
-- nvim_lsp["lua_ls"].setup({
-- 	on_attach = on_attach,
-- 	settings = {
-- 		runtime = { version = "LuaJIT" },
-- 		Lua = {
-- 			diagnostics = {
-- 				globals = { "vim" },
-- 			},
-- 		},
-- 	},
-- 	flags = {
-- 		debounce_text_changes = 150,
-- 	},
-- })

-- ██████╗ ███████╗██████╗ ██╗ █████╗  ██████╗ ██╗ ██████╗██╗    ██╗
-- ██╔══██╗██╔════╝██╔══██╗██║██╔══██╗██╔════╝ ██║██╔════╝██║    ██║
-- ██████╔╝███████╗██████╔╝██║███████║██║  ███╗██║██║     ██║ █╗ ██║
-- ██╔═══╝ ╚════██║██╔═══╝ ██║██╔══██║██║   ██║██║██║     ██║███╗██║
-- ██║     ███████║██║     ██║██║  ██║╚██████╔╝██║╚██████╗╚███╔███╔╝
-- ╚═╝     ╚══════╝╚═╝     ╚═╝╚═╝  ╚═╝ ╚═════╝ ╚═╝ ╚═════╝ ╚══╝╚══╝ 
--                                                                  
local map = vim.api.nvim_set_keymap
local opts = { noremap = true , silent = true }


map('i' , 'jk', '<Esc>' , opts)
vim.cmd "tnoremap jk <C-\\><C-n>"
vim.g.mapleader = " "

--
--------------------- FILES -----------------
map('n', '<leader>ff' ,':Telescope find_files<CR>', opts)
map('n', '<leader>fs' ,':w<CR>', opts)
map('n', '<leader>.' ,':Telescope file_browser<CR>', opts)

---------------------- BUFFER --------------------
map('n', '<leader>bb', ":Telescope buffers<CR>", opts)
map('n', '<leader>bd', ":bd<CR>", opts)

-------------------- WINDOW ---------------------
map('n', '<leader>wv' , ':vsplit<CR>' , opts)
map('n', '<leader>ws' , ':split<CR>' , opts)
map('n', '<leader>wh' , '<C-w><C-h>' , opts)
map('n', '<leader>wl' , '<C-w><C-l>' , opts)
map('n', '<leader>wk' , '<C-w><C-k>' , opts)
map('n', '<leader>wj' , '<C-w><C-j>' , opts)
map('n', '<leader>wc' , '<C-w>c' , opts)
map('n', '<leader>wo' , '<C-w>o' , opts)
map('n', '<leader>wt' , '<C-w>T' , opts)

----------------- TOGGLE -----------------------
map('n', '<leader>tt' , ':lua require("FTerm").toggle()<CR>', opts)
map('n', '<leader>tf' , ':NvimTreeToggle<CR>', opts)

---------------- SEARCH ------------------------
map('n', '<leader>ss', ':Telescope live_grep<CR>' , opts)

--------------- PROJECTS ------------------


map('n', '[q', ':cprev<CR>', opts)
map('n', ']q', ':cnext<CR>', opts)



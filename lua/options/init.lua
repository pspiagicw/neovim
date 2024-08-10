-- ██████╗ ███████╗██████╗ ██╗ █████╗  ██████╗ ██╗ ██████╗██╗    ██╗
-- ██╔══██╗██╔════╝██╔══██╗██║██╔══██╗██╔════╝ ██║██╔════╝██║    ██║
-- ██████╔╝███████╗██████╔╝██║███████║██║  ███╗██║██║     ██║ █╗ ██║
-- ██╔═══╝ ╚════██║██╔═══╝ ██║██╔══██║██║   ██║██║██║     ██║███╗██║
-- ██║     ███████║██║     ██║██║  ██║╚██████╔╝██║╚██████╗╚███╔███╔╝
-- ╚═╝     ╚══════╝╚═╝     ╚═╝╚═╝  ╚═╝ ╚═════╝ ╚═╝ ╚═════╝ ╚══╝╚══╝
--
local set = vim.opt

set.smarttab = true
set.softtabstop = 4           -- How to indent when using indent < >
set.incsearch = true          -- Incremental search
set.backup = false            -- creates a backup file
set.clipboard = "unnamedplus" -- allows neovim to access the system clipboard
set.cmdheight = 1             -- more space in the neovim command line for displaying messages
set.colorcolumn = "99999"     -- fixes indentline for now
set.completeopt = { "menuone", "noselect" }
set.conceallevel = 0          -- so that `` is visible in markdown files
set.fileencoding = "utf-8"    -- the encoding written to a file
set.hidden = true             -- required to keep multiple buffers and open multiple buffers
set.hlsearch = true           -- highlight all matches on previous search pattern
set.ignorecase = true         -- ignore case in search patterns
set.mouse = "a"               -- allow the mouse to be used in neovim
set.pumheight = 10            -- pop up menu height
set.showmode = false          -- we don't need to see things like -- INSERT -- anymore
set.showtabline = 0           -- always show tabs
set.smartcase = true          -- smart case
set.smartindent = true        -- make indenting smarter again
set.splitbelow = true         -- force all horizontal splits to go below current window
set.splitright = true         -- force all vertical splits to go to the right of current window
set.swapfile = false          -- creates a swapfile
set.termguicolors = true      -- set term gui colors (most terminals support this)
set.timeoutlen = 1000         -- time to wait for a mapped sequence to complete (in milliseconds)
set.title = true              -- set the title of window to the value of the titlestring
set.titlestring = "neovim"    -- what the title of the window will be set to
set.undodir = vim.fn.stdpath "cache" .. "/undo"
set.undofile = true           -- enable persistent undo
set.updatetime = 300          -- faster completion
set.writebackup = false       -- if a file is being edited by another program (or was written to file while editing with another program) it is not allowed to be edited
set.expandtab = true          -- convert tabs to spaces
set.shiftwidth = 4            -- the number of spaces inserted for each indentation
set.tabstop = 4               -- insert 2 spaces for a tab
set.cursorline = true         -- highlight the current line
set.number = true             -- set numbered lines
set.relativenumber = false    -- set relative numbered lines
set.numberwidth = 4           -- set number column width to 2 {default 4}
set.signcolumn = "yes"        -- always show the sign column otherwise it would shift the text each time
set.wrap = false              -- display lines as one long line
set.spell = false
set.spelllang = "en"
set.scrolloff = 8 -- is one of my fav, keep n lines above and below the current line visible
set.sidescrolloff = 8
set.autoread = true
set.breakindent = true   -- Enable break indent
set.inccommand = 'split' -- Preview substitions live
-- set.list = true
-- set.listchars = { tab = '» ', trail = '·', nbsp = '␣' }

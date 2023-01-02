-- ██████╗ ███████╗██████╗ ██╗ █████╗  ██████╗ ██╗ ██████╗██╗    ██╗
-- ██╔══██╗██╔════╝██╔══██╗██║██╔══██╗██╔════╝ ██║██╔════╝██║    ██║
-- ██████╔╝███████╗██████╔╝██║███████║██║  ███╗██║██║     ██║ █╗ ██║
-- ██╔═══╝ ╚════██║██╔═══╝ ██║██╔══██║██║   ██║██║██║     ██║███╗██║
-- ██║     ███████║██║     ██║██║  ██║╚██████╔╝██║╚██████╗╚███╔███╔╝
-- ╚═╝     ╚══════╝╚═╝     ╚═╝╚═╝  ╚═╝ ╚═════╝ ╚═╝ ╚═════╝ ╚══╝╚══╝ 
--                                                                  
-- PLUGINS --
-- Setup the plugin manager (`packer`)
-- Contains the plugins to be initialized
require("plugins")

-- SETTINGS -- 
-- Contains 
-- * global options
--   Includes general settings for the editor.
--   Example: ignorecase: true
-- * mappings 
--   Includes the mappings for the editor
--   NOTE: Does not include LSP mappings.
-- * ui-settings
--   Inclues ui-settings. Like
--   * StatusBar
--   * Nvim-Tree
require("settings")

-- COMPLETIONS -- 
-- Completions include fuzzy selector (`telescope`).
-- Programming `autocompletions` included in 'Programming'
require("completions")

-- PROGRAMMING --
-- Includes all the important stuff.
-- * Autocompletiosn
--   Uses `nvim-cmp`.
-- * LSP Settings
--   Uses `nvim-lspconfig` and `null-ls`
-- * TreeSitter Settings
--   Uses `nvim-treesitter`. May include `tree-sitter` textobjects and context.
-- * Project Settings
--   Uses project_nvim, may include `yabs.`
require("programming")

-- ██████╗ ███████╗██████╗ ██╗ █████╗  ██████╗ ██╗ ██████╗██╗    ██╗
-- ██╔══██╗██╔════╝██╔══██╗██║██╔══██╗██╔════╝ ██║██╔════╝██║    ██║
-- ██████╔╝███████╗██████╔╝██║███████║██║  ███╗██║██║     ██║ █╗ ██║
-- ██╔═══╝ ╚════██║██╔═══╝ ██║██╔══██║██║   ██║██║██║     ██║███╗██║
-- ██║     ███████║██║     ██║██║  ██║╚██████╔╝██║╚██████╗╚███╔███╔╝
-- ╚═╝     ╚══════╝╚═╝     ╚═╝╚═╝  ╚═╝ ╚═════╝ ╚═╝ ╚═════╝ ╚══╝╚══╝ 
require("telescope").setup({
    extensions = {
        ["ui-select"] = {
            require("telescope.themes").get_dropdown {
            }
        },
        fzf = {
            fuzzy = true,
            override_generic_sorter = true,
            override_file_sorter = true,
            case_mode = 'smart_case'
        }
    },
    defaults = {
        layout_stratergy = "vertical",
        mappings = {
            i = {
                ["<C-j>"] = "move_selection_next",
                ["<C-k>"] = "move_selection_previous",
                ["jk"] = "close",
            }
        }
    }
})


require("telescope").load_extension("fzf")

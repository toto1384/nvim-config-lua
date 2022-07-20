require('impatient')
require("mappings-and-options")
require("cmp-config")
require("lsp")
require("telescope-config")
require("autopairs-config")
require("gitsigns-config")
require("nvim-tree-config")
require('bufferline-config')
require('toggle-term-config')
require('which-key-config')


-- colorscheme
vim.cmd "colorscheme onedarkest"
require("plugins")




--other configs
require("indent_blankline").setup {
    -- for example, context is off by default, use this to turn it on
    show_current_context = true,
    show_current_context_start = true,
}


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
require("plugins")


-- colorscheme
vim.g.tokyonight_style = "night"
vim.cmd "colorscheme tokyonight"

-- vim.cmd [[ highlight QuickScopePrimary guifg='#ff0505' gui=underline ctermfg=155 cterm=underline ]]
-- vim.cmd [[ highlight QuickScopeSecondary guifg='#990202' gui=underline ctermfg=81 cterm=underline ]]
vim.highlight.create('QuickScopePrimary', {ctermfg=155, guifg="#ff0505"}, false)
vim.highlight.create('QuickScopePrimary', {ctermfg=81, guifg="#990202"}, false)

--other configs
require("indent_blankline").setup {
    -- for example, context is off by default, use this to turn it on
    show_current_context = true,
    -- show_current_context_start = true,
    show_end_of_line = true
}
require "lsp_signature".setup({
    bind = true, -- This is mandatory, otherwise border config won't get registered.
    handler_opts = {
      border = "rounded"
    },
    floating_window = false,
    hint_enable = true,
  })



-- snippets
local ls = require("luasnip")
-- some shorthands...
local snip = ls.snippet
local node = ls.snippet_node
local text = ls.text_node
local insert = ls.insert_node
local f = ls.function_node
local choice = ls.choice_node
local dynamicn = ls.dynamic_node
local postfix = require("luasnip.extras.postfix").postfix

-- local date = function() return {os.date('%Y-%m-%d')} end
local function firstToUpper(str)
    return (str:gsub("^%l", string.upper))
end

ls.add_snippets(nil, {
    all = {
        postfix(".st", {
            f(function(_, parent)
                return "const [" ..
                    parent.snippet.env.POSTFIX_MATCH ..
                    ", set" .. firstToUpper(parent.snippet.env.POSTFIX_MATCH) .. " ] = useState("
            end, {}),
            insert(1, "default"), text(")")
        }),
        postfix(".br", {
            f(function(_, parent)
                return "[" .. parent.snippet.env.POSTFIX_MATCH .. "]"
            end, {}),
        }),
        snip({
            trig = "dattt",
            namr = "Date",
            dscr = "Date in the form of YYYY-MM-DD",
        }, {
            text("datt")
        }),
    },
})

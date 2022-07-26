-- vim options
vim.bo.tabstop = 4
vim.bo.shiftwidth = 4
vim.bo.softtabstop = 4
vim.opt.tabstop = 4

vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.bo.expandtab = true
vim.opt.autoindent = true

vim.opt.foldmethod = "syntax"
vim.opt.foldlevelstart = 99

vim.wo.relativenumber = true
vim.opt.number = true

vim.opt.ignorecase = true
vim.opt.showtabline = 2
-- vim.opt.smartindent = true
vim.opt.termguicolors = true
vim.opt.numberwidth = 2
vim.opt.wrap = true
vim.opt.mouse = "a"
vim.opt.hidden = true
vim.opt.hlsearch = true
vim.opt.splitbelow = true -- force all horizontal splits to go below current window
vim.opt.splitright = true
vim.opt.swapfile = false
vim.opt.title = true -- set the title of window to the value of the titlestring
vim.opt.titlestring = "%<%F%=%l/%L - nvim"
vim.opt.undofile = true -- enable persistent undo
vim.opt.updatetime = 300
vim.opt.timeoutlen = 100
vim.opt.cursorline = true
vim.opt.spell = false
vim.opt.spelllang = "en"

vim.cmd [[set backspace=indent,eol,start]]


vim.cmd [[nnoremap <expr> <Up> (v:count == 0 ? 'gk' : 'k')]]
vim.cmd [[nnoremap <expr> <Down> (v:count == 0 ? 'gj' : 'j')]]



-- backspace
vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "nvim_treesitter#foldexpr()"

-- keymaps
local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- Normal --
-- Better window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)


-- Nvimtree
keymap("n", "<leader>e", ":NvimTreeToggle<cr>", opts)

keymap("i", "jk", "<ESC>", opts)
keymap("i", "kj", "<ESC>", opts)
keymap("i", "zx", "<ESC>", opts)
keymap("i", "xz", "<ESC>", opts)
keymap("i", "JK", "<ESC>", opts)
keymap("i", "KJ", "<ESC>", opts)
keymap("i", "ZX", "<ESC>", opts)
keymap("i", "XZ", "<ESC>", opts)


-- disable arrows and set virtual lines

-- keymap('n', '<Up>', '<Nop>', opts)
-- keymap('n', '<Down>', '<Nop>', opts)
-- keymap('n', '<Left>', '<Nop>', opts)
-- keymap('n', '<Right>', '<Nop>', opts)
--

-- Visual --
-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)
-- keymap("n","<BS>","<Esc>d?\\S?e1<CR>i",opts)

-- vim.api.nvim_exec(
--     [[function! HungryBackspaceWrapper()
--         let column = col('.')
--         return "\<Esc>:echo 'it works'"
--         if column == 1
--             return "\<Esc>kJxi"
--         elseif column >= 2 && getline('.')[column - 2] =~ '\S'
--             return "\<BS>"
--         else
--             return "\<Esc>d?\\S?e1\<CR>i"
--         endif
--         endfunction
--     map <BS> <c-r>=HungryBackSpaceWrapper()<CR>]],false
-- )




-- Move text up and down
keymap("v", "<M-Down>", ":m .+1<CR>==", opts)
keymap("v", "<M-Up>", ":m .-2<CR>==", opts)
keymap("v", "p", '"_dP', opts)

-- Visual Block --
-- Move text up and down
keymap("x", "J", ":move '>+1<CR>gv-gv", opts)
keymap("x", "K", ":move '<-2<CR>gv-gv", opts)
keymap("x", "<A-Down>", ":move '>+1<CR>gv-gv", opts)
keymap("x", "<A-Up>", ":move '<-2<CR>gv-gv", opts)


keymap("n", "<leader>f", "<cmd>Telescope find_files<cr>", opts)
keymap("n", "<c-t>", "<cmd>Telescope live_grep<cr>", opts)

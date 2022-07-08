-- Shorten function name
local keymap = vim.keymap.set
-- Silent keymap option
local opts = { silent = true }

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- Normal --
-- open netrw
keymap("n", "<leader>e", ":Vexplor<CR>", opts)

-- move line up or down
keymap("n", "J", ":m .+1<CR>==", opts)
keymap("n", "K", ":m .-2<CR>==", opts)

-- save file
keymap("n", "<leader>w", ":w<CR>", opts)

-- Better window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- Resize with arrows
keymap("n", "<C-Up>", ":resize -2<CR>", opts)
keymap("n", "<C-Down>", ":resize +2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- Navigate buffers
keymap("n", "<S-l>", ":bnext<CR>", opts)
keymap("n", "<S-h>", ":bprevious<CR>", opts)

-- Clear highlights
keymap("n", "<leader>h", "<cmd>nohlsearch<CR>", opts)

-- Close buffers
keymap("n", "<S-q>", "<cmd>Bdelete!<CR>", opts)

-- Insert --
-- Simple pairs
keymap("i", "((", "()<Esc>ha", opt)
keymap("i", "{{", "{}<Esc>ha", opt)
keymap("i", "[[", "[]<Esc>ha", opt)
keymap("i", "\"\"", "\"\"<Esc>ha", opt)
keymap("i", "\'\'", "\'\'<Esc>ha", opt)
keymap("i", "``", "``<Esc>ha", opt)
keymap("i", "zl", "<Esc>la", opt)
keymap("i", "zL", "<Esc>A", opt) 

-- Press jj fast to enter normal mode
keymap("i", "jj", "<ESC>", opts)

-- Visual --
-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Better paste
keymap("v", "p", '"_dP', opts)

-- Plugins --

-- vim-commentary
-- gcc toggles comment from vim commentary it takes a count for
-- multiple lines
-- gc + motion toggles comment to motion
-- gC + motion toggles comment to motion ex. gCi( comment inside ()

-- vim-surround
-- ys + motion + desired adds desired around target and motion
-- cs + existing + desired change existing to desired
-- ds + existing delete existing
-- S + desired add desired around selection in visual mode

-- notes on netrw commands
-- d make a directory
-- D attempt to remove the files/directories
-- c make browsing directory the current directory
-- gn make top of tree the directory under cursor
-- R rename the designated files/directories
-- v enter the file/directory under the cursor
-- % open a new file in the netrw's current directory

-- NvimTree
-- keymap("n", "<leader>e", ":NvimTreeToggle<CR>", opts)

-- Telescope
keymap("n", "<leader>ff", ":Telescope find_files<CR>", opts)
keymap("n", "<leader>ft", ":Telescope live_grep<CR>", opts)
keymap("n", "<leader>fp", ":Telescope projects<CR>", opts)
keymap("n", "<leader>fb", ":Telescope buffers<CR>", opts)

-- fzf
keymap("n", "<leader>p", ":Files<CR>", opts)
keymap("n", "<leader>b", ":Buffers<CR>", opts)
keymap("n", "<leader>r", ":Rg<CR>", opts)

-- Git
-- keymap("n", "<leader>gg", "<cmd>lua _LAZYGIT_TOGGLE()<CR>", opts)

-- Comment

-- DAP
-- keymap("n", "<leader>db", "<cmd>lua require'dap'.toggle_breakpoint()<cr>", opts)
-- keymap("n", "<leader>dc", "<cmd>lua require'dap'.continue()<cr>", opts)
-- keymap("n", "<leader>di", "<cmd>lua require'dap'.step_into()<cr>", opts)
-- keymap("n", "<leader>do", "<cmd>lua require'dap'.step_over()<cr>", opts)
-- keymap("n", "<leader>dO", "<cmd>lua require'dap'.step_out()<cr>", opts)
-- keymap("n", "<leader>dr", "<cmd>lua require'dap'.repl.toggle()<cr>", opts)
-- keymap("n", "<leader>dl", "<cmd>lua require'dap'.run_last()<cr>", opts)
-- keymap("n", "<leader>du", "<cmd>lua require'dapui'.toggle()<cr>", opts)
-- keymap("n", "<leader>dt", "<cmd>lua require'dap'.terminate()<cr>", opts)

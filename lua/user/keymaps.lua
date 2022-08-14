-- Shorten function name
local keymap = vim.keymap.set
-- Silent keymap option
local opts = { noremap = true, silent = true }

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
keymap("n", "<leader>e", ":NvimTreeToggle<CR>", opts)

--open terminal
keymap("n", "<leader>t", ":bo term<CR>", opts)

-- move line up or down
keymap("n", "J", ":m .+1<CR>==", opts)
keymap("n", "K", ":m .-2<CR>==", opts)

-- save file
keymap("n", "<leader>w", ":w<CR>", opts)

-- Better window navigation
keymap("n", "<leader>h", "<C-w>h", opts)
keymap("n", "<leader>j", "<C-w>j", opts)
keymap("n", "<leader>k", "<C-w>k", opts)
keymap("n", "<leader>l", "<C-w>l", opts)
keymap("n", "<leader>o", "<C-w>o", opts)

-- Resize with arrows
keymap("n", "<C-Up>", ":resize -2<CR>", opts)
keymap("n", "<C-Down>", ":resize +2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- Navigate buffers
keymap("n", "<S-l>", ":bnext<CR>", opts)
keymap("n", "<S-h>", ":bprevious<CR>", opts)

-- Close buffers
keymap("n", "<S-q>", "<cmd>Bdelete!<CR>", opts)

-- Insert --

-- Press jj fast to enter normal mode
keymap("i", "jj", "<ESC>", opts)

-- Visual --
-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Better paste
keymap("v", "p", '"_dP', opts)

-- move text
keymap("v", "J", ":m .+1<CR>==", opts)
keymap("v", "K", ":m .-2<CR>==", opts)

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
keymap("n", "<leader>f", ":Telescope find_files<CR>", opts)
-- keymap("n", "<leader>ff", "<cmd>:lua require('telescope.builtin').find_files(require('telescope.themes').get_dropdown{previewer = true})<cr>", opts)
keymap("n", "<leader>r", ":Telescope live_grep<CR>", opts)
keymap("n", "<leader>b", ":Telescope buffers<CR>", opts)

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

local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

--Remap ";" as leader key
keymap("", ";", "<Nop>", opts)
vim.g.mapleader = ";"
vim.g.maplocalleader = ";"

-- Modes normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t", command_mode = "c",

-- Normal --
-- Better window navigation
keymap("n", "<A-h>", "<C-w>h", opts)
keymap("n", "<A-j>", "<C-w>j", opts)
keymap("n", "<A-k>", "<C-w>k", opts)
keymap("n", "<A-l>", "<C-w>l", opts)
keymap("i", "<A-h>", "<Esc><C-w>h", opts)
keymap("i", "<A-j>", "<Esc><C-w>j", opts)
keymap("i", "<A-k>", "<Esc><C-w>k", opts)
keymap("i", "<A-l>", "<Esc><C-w>l", opts)

keymap("n", "j", "gj", opts)
keymap("n", "k", "gk", opts)

keymap("v", "j", "gj", opts)
keymap("v", "k", "gk", opts)

-- NOTE: require winshit plugin
keymap("n", "<C-m>", ":WinShift<cr>", opts)

keymap("v", "<C-j>", "5gj", opts)
keymap("v", "<C-k>", "5gk", opts)
keymap("v", "<C-h>", "5h", opts)
keymap("v", "<C-l>", "5l", opts)
keymap("n", "<C-j>", "5gj", opts) keymap("n", "<C-k>", "5gk", opts)
keymap("n", "<C-l>", "5l", opts)
keymap("n", "<C-h>", "5h", opts)
--bufferLine
-- keymap("n", "<C-u>", ":BufferLinePick<cr>", opts)

-- keymap("v", "x", "\"_x", opts)
-- keymap("n", "<A-v>", ":vsplit<cr>", opts)




-- FileExpoler
keymap("n", "<C-e>", ":NvimTreeToggle<cr>", opts)
keymap("n", "<C-f>", ":NvimTreeFindFile<cr>", opts)
-- no highlight
keymap("n", "<leader>h", ":nohl<cr>", opts)

keymap("n", "<leader>t", ":ToggleTerm<cr>", opts)
-- save buffer
-- keymap("n", "<leader>w", ":w<cr>", opts)
-- exit cur window
-- delete cur buffer
-- keymap("n", "<leader>d", ":bdelete<cr>", opts)
-- keymap("n", "<leader>D", ":bdelete<cr>", opts)
-- exit whole program
-- keymap("n", "ZZ", ":lua require('user.utils').SaveAndExit()<cr>", opts)
-- remap macro record key
keymap("n", "Q", "q", opts)
-- cancel q
keymap("n", "q", "<Nop>", opts)

-- center curso
keymap("n", "n", "nzzzv", opts)
keymap("n", "N", "Nzzzv", opts)
-- keymap("n", "J", "mzJ`z", opts)
-- keymap("n", "j", "jzz", opts)
-- keymap("n", "k", "kzz", opts)

-- Resize with arrows
keymap("n", "<C-Up>", ":resize -2<CR>", opts)
keymap("n", "<C-Down>", ":resize +2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)


-- Navigate line
keymap("n", "H", "^", opts)
keymap("n", "L", "$", opts)
keymap("v", "H", "^", opts)
keymap("v", "L", "$", opts)

-- Insert --
-- Press jl fast to enter
-- keymap("i", "jl", "<ESC>", opts)

-- Visual --
-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Move text up and down
-- keymap("v", "<A-j>", ":m .+1<CR>==", opts)
-- keymap("v", "<A-k>", ":m .-2<CR>==", opts)
-- keymap("v", "p", '"_dP', opts)

-- Visual Block --
-- Move text up and down
-- keymap("x", "J", ":move '>+1<CR>gv-gv", opts)
-- keymap("x", "K", ":move '<-2<CR>gv-gv", opts)
-- keymap("x", "<A-j>", ":move '>+1<CR>gv-gv", opts)
-- keymap("x", "<A-k>", ":move '<-2<CR>gv-gv", opts)

-- Terminal --
-- Better terminal navigation
-- keymap("t", "<C-h>", "<C-\\><C-N><C-w>h", term_opts)
-- keymap("t", "<C-j>", "<C-\\><C-N><C-w>j", term_opts)
-- keymap("t", "<C-k>", "<C-\\><C-N><C-w>k", term_opts)
-- keymap("t", "<C-l>", "<C-\\><C-N><C-w>l", term_opts)


-- TODO: 下边是暂时用不到所以先注释调
--  keymap("n", "<A-o>", "<cmd>ClangdSwitchSourceHeader<cr>", opts)
--  keymap("n", "<leader>u", "<cmd>Trouble lsp_references<cr>", opts)

-- debug
keymap("n", "<leader>db", "<cmd>lua require'dap'.toggle_breakpoint()<cr>", opts)
keymap("n", "<leader>dB", "<cmd>lua require'dap'.set_breakpoint(vim.fn.input '[Condition] > ')<cr>", opts)
-- keymap("n", "<leader>dr", "lua require'dap'.repl.open()<cr>", opts)
keymap("n", "<leader>dl", "<cmd>lua require'dap'.run_last()<cr>", opts)
keymap("n", "<leader>dn", "<cmd>lua require'dap'.step_over()<cr>", opts)
keymap("n", "<leader>ds", "<cmd>lua require'dap'.step_into()<cr>", opts)
keymap("n", "<leader>dc", "<cmd>lua require'dap'.continue()<cr>", opts)
keymap("n", "<leader>df", "<cmd>lua require'dap'.step_out()<cr>", opts)

-- keymap("n", "K", "<cmd>lua require'dapui'.eval()<cr>", opts)
-- keymap("n", "<leader>dt", "<cmd>lua require'dapui'.toggle()<cr>", opts)
-- keymap("n", "<leader>dx", "<cmd>lua require'dap'.terminate()<cr>", opts)
--  
--  -- git diff view
--  keymap('n', '<leader>j', ']c', opts)
--  keymap('n', '<leader>k', '[c', opts)
--  
--  -- unit test
--  keymap("n", "<leader>rr", "<cmd>UltestNearest<cr>", opts)
--  keymap("n", "<leader>rd", "<cmd>UltestDebugNearest<cr>", opts)
--  
--  
--  -- sniprun
--  keymap("n", "<leader>rf", ":%SnipRun<cr>", opts)
--  keymap("v", "<leader>rs", ":%SnipRun<cr>", opts)
--  
--  -- spell check
--  vim.cmd(
--  [[
--    nnoremap <leader>s :call search('\w\>', 'c')<CR>a<C-X><C-S>
--  ]])
--  
--  -- gtags
--  -- find functions calling this function
--  keymap("n", "<leader>U", ":lua require('user.utils').GtagsRefernce()<cr>", opts)
--  -- find definition
--  keymap("n", "<leader>T", ":lua require('user.utils').GtagsText()<cr>", opts)

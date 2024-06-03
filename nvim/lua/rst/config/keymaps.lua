require("rst/functions/map")

vim.g.mapleader = " "

map("i", "jk", "<esc>", "Back to normal mode")

map("n", "<leader>nh", ":nohl<cr>", "Turn off current search highlighted text")

map("n", "<leader>+", "<c-a>", "Increment number under cursor")
map("n", "<leader>-", "<c-x>", "Decrement number under cursor")

map("n", "<leader>sv", "<c-w>v", "Split window vertically")
map("n", "<leader>sh", "<c-w>h", "Split window horizontally")
map("n", "<leader>sx", ":close<cr>", "Close last window")

map("n", "<leader>w", "<cmd>w<cr>", "Save current buffer")

map("n", "<leader>k", ":bnext<cr>", "Switch to the next buffer")
map("n", "<leader>j", ":bprev<cr>", "Switch to the previous buffer")
map("n", "<leader>bd", ":bp | bd #<cr>", "Close current buffer")

map("n", "<c-a>", "gg<s-v>G", "Select all text in buffer")

map("n", "<a-up>", ":m .-2<cr>==", "Move current line up")
map("n", "<a-down>", ":m .1<cr>==", "Move current line down")
map("v", "<a-up>", ":m '<-2<cr>gv=gv", "Move selected lines down")
map("v", "<a-down>", ":m '>+1<cr>gv=gv", "Move selected lines up")

map("n", "<leader>lw", ":set wrap!<cr>", "Toggle line wrap")


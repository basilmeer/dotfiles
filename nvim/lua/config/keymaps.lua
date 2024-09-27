vim.g.mapleader = " "
vim.g.maplocalleader = " "

local map = vim.keymap.set

-- Generics
map("n", "<C-s>", "<cmd>w<cr>", { desc = "Old habits die hard; Ctrl+s" })

-- Move Lines
map("n", "<A-j>", "<cmd>m .+1<cr>==", { desc = "Move down" })
map("n", "<A-k>", "<cmd>m .-2<cr>==", { desc = "Move up" })
map("i", "<A-j>", "<esc><cmd>m .+1<cr>==gi", { desc = "Move down" })
map("i", "<A-k>", "<esc><cmd>m .-2<cr>==gi", { desc = "Move up" })
map("v", "<A-j>", ":m '>+1<cr>gv=gv", { desc = "Move down" })
map("v", "<A-k>", ":m '<-2<cr>gv=gv", { desc = "Move up" })

-- Neotree
map("n", "<leader>e", "<cmd>Neotree toggle<cr>", { desc = "Open and focus Neotree" })
map("n", "<leader>b", "<cmd>Neotree show<cr>", { desc = "Show Neotree" })

-- Barbar
map("n", "<leader>x", "<cmd>BufferClose<cr>", { desc = "Close current buffer" })
map("n", "<S-Tab>", "<cmd>BufferPrevious<cr>", { desc = "Move to the previous tab" })
map("n", "<Tab>", "<cmd>BufferNext<cr>", { desc = "Move to the next tab" })
map("n", "<A-1>", "<cmd>BufferGoto 1<cr>", { desc = "Go to 1st buffer" })
map("n", "<A-2>", "<cmd>BufferGoto 2<cr>", { desc = "Go to 2nd buffer" })
map("n", "<A-3>", "<cmd>BufferGoto 3<cr>", { desc = "Go to 3rd buffer" })
map("n", "<A-4>", "<cmd>BufferGoto 4<cr>", { desc = "Go to 4th buffer" })
map("n", "<A-5>", "<cmd>BufferGoto 5<cr>", { desc = "Go to 5th buffer" })
map("n", "<A-6>", "<cmd>BufferGoto 6<cr>", { desc = "Go to 6th buffer" })
map("n", "<A-7>", "<cmd>BufferGoto 7<cr>", { desc = "Go to 7th buffer" })
map("n", "<A-8>", "<cmd>BufferGoto 8<cr>", { desc = "Go to 8th buffer" })
map("n", "<A-9>", "<cmd>BufferLast<cr>",   { desc = "Go to the last buffer" })
map("n", "<A-0>", "<cmd>BufferFirst<cr>",  { desc = "Go to the first buffer" })

-- Telescope
map("n", "<leader>ff", "<cmd>Telescope find_files<cr>",  { desc = "Find files" })


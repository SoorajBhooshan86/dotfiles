vim.g.mapleader = " "


local keymap = vim.keymap

-- delete single character without copying into register
keymap.set("n", "x", '"_x')

keymap.set("i","jk","<ESC>",{desc = "Exit insert mode"})
keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })

keymap.set("n", "<leader>vs", "<C-w>v", { desc = "Split window vertically" })
keymap.set("n", "<leader>hs", "<C-w>s", { desc = "Split window horizontally" })
keymap.set("n", "<leader>es", "<C-w>=", { desc = "Make splits equal size" })
keymap.set("n", "<leader>xs", "<cmd>close<CR>", { desc = "Close current split" })

keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" })
keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" })
keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" })
keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" })
keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" })

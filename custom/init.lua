require "custom.plugins.toggleterm"
require "custom.plugins.autopairs"
require "custom.plugins.surround"
require "custom.plugins.treesitter"
require "custom.plugins.neoscroll"

vim.keymap.set("n", "<c-t>", ":ToggleTerm<CR>", { desc = "run float term" })

vim.opt.mouse = "a"
vim.o.listchars = "space:·,tab:>-"
vim.o.list = true
vim.opt.guifont = "FiraCode Nerd Font"
vim.o.spelllang = "en,ru"

-- vim.g.tokyonight_style = "night"
-- vim.g.colorscheme = "tokyonight"
-- vim.g.tokyonight_italic_functions = true

vim.keymap.set("n", "<m-down>", ":m .+1<CR>", { desc = "move line up" })
vim.keymap.set("n", "<m-up>", ":m .-2<CR>", { desc = "move line up" })

vim.keymap.set("v", "<m-down>", ":m'>+<CR>gv=`<my`>mzgv`yo`z", { desc = "move selected down" })
vim.keymap.set("v", "<m-up>", ":m'<-2<CR>gv=`<my`>mzgv`yo`z", { desc = "move selected up" })

vim.keymap.set("i", "<m-j>", "<Esc>:m .+<CR>==gi", { desc = "move down in insert mode" })
vim.keymap.set("i", "<m-k>", "<Esc>:m .-2<CR>==gi", { desc = "move up in insert mode" })

vim.keymap.set("n", "<m-ScrollWheelDown>", "10zl", { desc = "move hotizontal right" })
vim.keymap.set("n", "<m-ScrollWheelUp>", "10zh", { desc = "move hotizontal left" })
vim.keymap.set("i", "<m-ScrollWheelDown>", "10zl", { desc = "move hotizontal right" })
vim.keymap.set("i", "<m-ScrollWheelUp>", "10zh", { desc = "move hotizontal left" })

vim.keymap.set("n", "<ScrollWheelLeft>", "10zh", { desc = "move hotizontal right" })
vim.keymap.set("n", "<ScrollWheelRight>", "10zl", { desc = "move hotizontal left" })


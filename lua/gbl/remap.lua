local keymap = vim.keymap.set
vim.g.mapleader = " "

--keymap("n", "<C-w>s", "<C-w>s<C-w>w")
--keymap("n", "<C-w>v", "<C-w>v<C-w>w")

keymap("n", "<leader>e", vim.cmd.Ex)

keymap("v", "J", ":m '>+1<CR>gv=gv")
keymap("v", "K", ":m '<-2<CR>gv=gv")

keymap("n", "J", "mzJ`z")
keymap("n", "<C-d>", "<C-d>zz")
keymap("n", "<C-u>", "<C-u>zz")
keymap("n", "n", "nzzzv")
keymap("n", "N", "Nzzzv")

-- greatest remap ever
keymap("x", "<leader>P", [["+p]])

keymap("n", "<leader>w", "<C-w>_<C-w>|")

-- next greatest remap ever : asbjornHaland
keymap({ "n", "v" }, "<leader>y", [["+y]])
keymap("n", "<leader>Y", [["+Y]])

keymap({ "n", "v" }, "<leader>d", [["_d]])

keymap("n", "Q", "<nop>")
keymap({ "n", "i" }, "<f1>", "<nop>")

keymap("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")

keymap("n", "<leader>j", "<cmd>cnext<CR>zz")
keymap("n", "<leader>k", "<cmd>cprev<CR>zz")
--keymap("n", "<leader>k", "<cmd>lnext<CR>zz")
--keymap("n", "<leader>j", "<cmd>lprev<CR>zz")

keymap("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
keymap("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

keymap("n", "<leader>cf", "<cmd>e ~/AppData/Local/nvim<cr>");
keymap("n", "<leader>cct", "<cmd>colorscheme tokyonight-night<cr>");
keymap("n", "<leader>ccr", "<cmd>colorscheme rose-pine-main<cr>");
keymap("n", "<leader>cq", "<cmd>e ~/AppData/Roaming/qutebrowser/config/<cr>");
keymap("n", "<leader>gop", "<cmd>e ~/brice/data_manager/<cr>");
keymap("n", "<leader>gpp", "<cmd>e c:/xampp/htdocs/gestion_client<cr>");
keymap("n", "<leader>gtp", "<cmd>e ~/brice/typescript/<cr>");
keymap("n", "<leader>cp", "<cmd>make<cr>");


keymap("n", "+", "<C-a>")
keymap("n", "-", "<C-x>")

keymap("n", "<C-a>", "ggVG")
keymap("n", "<C-x>", "ggVGd")

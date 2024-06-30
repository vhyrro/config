-- NOTE: All of these keybinds are currently in a single file.
-- This is mostly for convenience and because I'm a lazy bum.
--
-- Eventually I'd like to extend rocks-config.nvim to also
-- allow settings keymaps/defining keybind files for a given plugin.

vim.keymap.set("n", "<C-c>", "<cmd>bd<CR>", { desc = "closes the current buffer", silent = true })
vim.keymap.set("n", "<C-n>", "<cmd>bn<CR>", { desc = "cycles to the next buffer", silent = true })
vim.keymap.set("n", "<C-p>", "<cmd>bp<CR>", { desc = "cycles to the previous buffer", silent = true })

vim.keymap.set("n", "<C-h>", "<C-w>h", { desc = "moves to the leftside split" })
vim.keymap.set("n", "<C-l>", "<C-w>l", { desc = "moves to the rightside split" })

vim.keymap.set("n", "<Esc>", "<cmd>noh<CR>", { desc = "clears search highlights", silent = true })

vim.keymap.set("n", "<Esc>", "<cmd>noh<CR>", { desc = "clears search highlights", silent = true })

vim.keymap.set({"n", "v"}, ";", ":")
vim.keymap.set({"n", "v"}, ":", ";")

vim.keymap.set("v", "<Leader>d", '"_d')
vim.keymap.set("v", "<Leader>D", '"_D')
vim.keymap.set("v", "<Leader>c", '"_c')
vim.keymap.set("v", "<Leader>C", '"_C')
vim.keymap.set("n", "<Leader>p", "<cmd>InspectTree<CR>", { desc = "opens the `:InspectTree` split", silent = true })

-- Neogit
-- vim.keymap.set("n", "<Leader>g", "<cmd>Neogit<CR>", { desc = "activate neogit", silent = true })

-- Lazyjj
vim.keymap.set("n", "<Leader>g", '<cmd>TermExec cmd="lazyjj" direction=float name=lazyjj<CR>', { silent = true })

-- Toggleterm
vim.keymap.set("n", "<Leader>T", function()
    return "<cmd>" .. tostring(vim.v.count1) .. "ToggleTerm direction=float<CR>"
end, { expr = true, silent = true })

vim.keymap.set("t", "<C-n>", "<C-\\><C-n>", { desc = "moves to normal mode in a terminal" })

-- Telescope
vim.keymap.set("n", "<Leader>ff", "<cmd>Telescope find_files<CR>", { desc = "fuzzy searches through files", silent = true })
vim.keymap.set("n", "<Leader>lg", "<cmd>Telescope live_grep<CR>", { desc = "lives greps through the cwd", silent = true })
vim.keymap.set("n", "<Leader>fh", "<cmd>Telescope help_tags<CR>", { desc = "fuzzy searches through help pages", silent = true })

-- Neogen
vim.keymap.set("n", "<Leader>o", "<cmd>Neogen<CR>", { desc = "generates documentation for the current item", silent = true })

-- Lsp Lines
vim.keymap.set("n", "<Leader>lt", function() require("lsp_lines").toggle() end, { desc = "toggle `lsp_lines`" })

-- Oil
vim.keymap.set("n", "<Leader><Leader>", "<cmd>Oil<CR>", { silent = true })

-- Rustaceanvim
vim.keymap.set("n", "<Leader>ca", "<cmd>RustLsp codeAction<CR>", { silent = true })
vim.keymap.set("n", "<Leader>e", "<cmd>RustLsp explainError<CR>", { silent = true })

-- Neotest
vim.keymap.set("n", "<Leader>tr", function() require("neotest").run.run() end, { silent = true })
vim.keymap.set("n", "<Leader>ta", function() require("neotest").run.run({ suite = true }) end, { silent = true })
vim.keymap.set("n", "<Leader>td", function() require("neotest").run.run({ strategy = "dap", suite = false }) end, { silent = true })
vim.keymap.set("n", "<Leader>tw", function() require("neotest").watch.toggle() end, { silent = true })
vim.keymap.set("n", "<Leader>ts", function() require("neotest").summary.toggle() end, { silent = true })
vim.keymap.set("n", "<Leader>to", function() require("neotest").output.open() end, { silent = true })
vim.keymap.set("n", "<Leader>tp", function() require("neotest").output_panel.toggle() end, { silent = true })

-- nvim-dap
vim.keymap.set("n", "<Leader>db", function() require("dap").toggle_breakpoint() end, { silent = true })
vim.keymap.set("n", "<Leader>dc", function() require("dap").continue() end, { silent = true })
vim.keymap.set("n", "<Leader>du", function() require("dapui").toggle() end, { silent = true })
vim.keymap.set('n', "<Leader>dn", function() require('dap').step_into() end)
vim.keymap.set('n', "<Leader>dN", function() require('dap').step_over() end)
vim.keymap.set('n', "<Leader>dp", function() require('dap').step_out() end)
vim.keymap.set('n', "<Leader>dK", function() require('dap.ui.widgets').hover() end)

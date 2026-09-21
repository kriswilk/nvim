vim.pack.add({ "https://github.com/folke/flash.nvim" })

local u = require("utils")

require("flash").setup({
    modes = {
        treesitter = { label = { rainbow = { enabled = true } } },
        treesitter_search = { label = { style = "overlay" } },
    },
})

-- KEYMAPS

local flash = require("flash")

u.key({ "n", "x", "o" }, "<CR>", flash.jump, { desc = "Flash" })
u.key({ "n", "x", "o" }, "S", flash.treesitter, { desc = "Flash Treesitter" })
u.key("o", "r", flash.remote, { desc = "Flash (remote)" })
u.key({ "x", "o" }, "R", flash.treesitter_search, { desc = "Flash Treesitter (remote)" })
u.key("c", "<C-s>", flash.toggle, { desc = "Toggle Flash Search Integration" })

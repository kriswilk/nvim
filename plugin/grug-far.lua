vim.pack.add({ "https://github.com/MagicDuck/grug-far.nvim" })

local u = require("utils")

-- KEYMAPS

u.key({ "n", "x" }, "<leader>sg", function()
    require("grug-far").open()
end, { desc = "Global Search & Replace" })

u.key({ "n", "x" }, "<leader>sf", function()
    require("grug-far").open({ prefills = { paths = vim.fn.expand("%") } })
end, { desc = "Find & Replace (file)" })

vim.pack.add({ "https://github.com/folke/which-key.nvim" })

local u = require("utils")

require("which-key").setup()

-- KEYMAPS

u.key("n", "<leader>?", function()
    require("which-key").show({ global = false })
end, { desc = "Buffer local keymaps (which-key)" })

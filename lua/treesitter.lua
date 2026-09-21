vim.pack.add({ "https://github.com/nvim-treesitter/nvim-treesitter" }, { confirm = false })

local u = require("utils")

require("nvim-treesitter").install({
    -- core
    "c",
    "cmake",
    "lua",
    "markdown",
    "vim",
    "vimdoc",

    -- other
    "bash",
    "css",
    "csv",
    "html",
    "javascript",
    "jinja",
    "json",
    "kdl",
    "make",
    "nix",
    "perl",
    "php",
    "python",
    "rust",
    "sql",
    "toml",
    "typescript",
    "typst",
    "xml",
    "yaml",
})

-- AUTOCOMMANDS

-- enable highlighting (or silently fail)
u.auto("FileType", {
    callback = function()
        pcall(vim.treesitter.start)
    end,
})

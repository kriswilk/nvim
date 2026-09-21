vim.pack.add({ "https://github.com/monaqa/dial.nvim" })

local u = require("utils")
local augend = require("dial.augend")

require("dial.config").augends:register_group({
    default = {
        augend.constant.alias.bool,
        augend.constant.alias.Bool,

        augend.integer.alias.binary,
        augend.integer.alias.decimal,
        augend.integer.alias.hex,

        augend.date.alias["%Y/%m/%d"],
        augend.date.alias["%Y-%m-%d"],
        augend.date.alias["%m/%d"],
        augend.date.alias["%H:%M"],

        augend.constant.alias.en_weekday,
        augend.constant.alias.en_weekday_full,

        augend.semver.alias.semver,
    },
})

-- KEYMAPS

u.key("n", "<C-a>", function()
    require("dial.map").manipulate("increment", "normal")
end)
u.key("n", "<C-x>", function()
    require("dial.map").manipulate("decrement", "normal")
end)
u.key("n", "g<C-a>", function()
    require("dial.map").manipulate("increment", "gnormal")
end)
u.key("n", "g<C-x>", function()
    require("dial.map").manipulate("decrement", "gnormal")
end)
u.key("x", "<C-a>", function()
    require("dial.map").manipulate("increment", "visual")
end)
u.key("x", "<C-x>", function()
    require("dial.map").manipulate("decrement", "visual")
end)
u.key("x", "g<C-a>", function()
    require("dial.map").manipulate("increment", "gvisual")
end)
u.key("x", "g<C-x>", function()
    require("dial.map").manipulate("decrement", "gvisual")
end)

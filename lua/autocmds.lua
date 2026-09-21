local u = require("utils")

-- customize special buffers
u.auto("FileType", {
    pattern = {
        "checkhealth",
        "help",
        "man",
        "qf",
    },
    callback = function()
        u.key("n", "q", ":bd<CR>", { buffer = true })

        u.ol.scrolloff = 0

        u.ol.number = false
        u.ol.relativenumber = false
        u.ol.signcolumn = "no"
        u.ol.foldcolumn = "0"
        u.ol.statuscolumn = ""
    end,
})

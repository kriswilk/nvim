vim.pack.add({ "https://github.com/folke/snacks.nvim" })

local u = require("utils")

require("snacks").setup({
    explorer = {},
    indent = {
        animate = {
            enabled = false,
        },
    },
    lazygit = {
        win = {
            style = "lazygit",
            border = true,
        },
    },
    picker = {
        layout = {
            cycle = false,
        },
        prompt = " ",
    },
    scope = {},
    scroll = {},
})

-- KEYMAPS

local snacks = require("snacks")

-- explorer (sidebar & picker styles)
u.key("n", "<leader>e", function()
    snacks.picker.explorer({
        win = {
            preview = {
                wo = {
                    -- no signs/numbers in sidebar previews
                    number = false,
                    relativenumber = false,
                    signcolumn = "no",
                    foldcolumn = "0",
                    statuscolumn = "",
                },
            },
            input = {
                keys = {
                    ["<Esc>"] = { "", mode = "n" },
                },
            },
            list = {
                keys = {
                    ["<Esc>"] = { "", mode = "n" },
                },
            },
        },
    })
end, { desc = "File Explorer" })
u.key("n", "<leader>fe", function()
    snacks.picker.explorer({
        auto_close = true,
        layout = {
            { preview = true },
            layout = {
                box = "horizontal",
                width = 0.8,
                height = 0.8,
                {
                    box = "vertical",
                    border = true,
                    title = "{source} {live} {flags}",
                    title_pos = "center",
                    {
                        win = "input",
                        height = 1,
                        border = "bottom",
                    },
                    {
                        win = "list",
                        border = "none",
                    },
                },
                {
                    win = "preview",
                    border = true,
                    width = 0.7,
                    title = "{preview}",
                },
            },
        },
    })
end, { desc = "Snacks Picker: explorer" })

-- pickers
u.key("n", "<leader><leader>", snacks.picker.smart, { desc = "Snacks Picker: smart" })
u.key("n", "<leader>fb", snacks.picker.buffers, { desc = "Snacks Picker: buffers" })
u.key("n", "<leader>ff", snacks.picker.files, { desc = "Snacks Picker: files" })
u.key("n", "<leader>fg", snacks.picker.grep, { desc = "Snacks Picker: grep" })
u.key("n", "<leader>fh", snacks.picker.help, { desc = "Snacks Picker: help" })
u.key("n", "<leader>fk", snacks.picker.keymaps, { desc = "Snacks Picker: keymaps" })
u.key("n", "<leader>fm", snacks.picker.man, { desc = "Snacks Picker: man" })
u.key("n", "<leader>fo", snacks.picker.recent, { desc = "Snacks Picker: recent" })
u.key("n", "<leader>fr", snacks.picker.resume, { desc = "Snacks Picker: resume" })
u.key("n", "<leader>fp", snacks.picker.pickers, { desc = "Snacks Picker: pickers" })
u.key("n", "<leader>fu", snacks.picker.undo, { desc = "Snacks Picker: undo" })

-- lazygit
u.key("n", "<leader>gg", snacks.lazygit.open, { desc = "LazyGit" })
u.key("n", "<leader>gG", function()
    snacks.lazygit.open({ cwd = vim.fn.expand("%:p:h") })
end, { desc = "LazyGit (File)" })
u.key("n", "<leader>gl", snacks.lazygit.log, { desc = "LazyGit Log" })
u.key("n", "<leader>gL", snacks.lazygit.log_file, { desc = "LazyGit Log (File)" })

-- HIGHLIGHTS

u.hl("SnacksIndent", { link = "WinSeparator" })
u.hl("SnacksPickerPrompt", { link = "Normal" })
u.hl("SnacksPickerTree", { link = "NonText" })

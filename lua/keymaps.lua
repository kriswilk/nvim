local u = require("utils")

-- write, quit, restart

u.key({ "n", "v" }, "<leader>w", function()
    require("conform").format()
    vim.cmd("write")
end, { desc = "Format & Write (conform)" })

u.key("n", "<leader>q", ":quitall<CR>", { desc = "Quit" })

u.key("n", "<leader>r", function()
    local session = vim.fn.stdpath("state") .. "/restart_session.vim"
    vim.cmd("mksession! " .. vim.fn.fnameescape(session))
    vim.cmd("restart source " .. vim.fn.fnameescape(session))
end, { desc = "Restart" })

-- exit insert mode

u.key("i", "jk", "<Esc>", { desc = "Exit Insert Mode" })

-- dismiss search highlights

u.key("n", "<Esc>", ":nohlsearch<CR>", { desc = "Dismiss Search Highlights" })

-- navigate buffers

u.key("n", "<leader>bd", ":bdelete<CR>", { desc = "Delete Buffer" })
u.key("n", "<leader>bn", ":bnext<CR>", { desc = "Next Buffer" })
u.key("n", "<leader>bp", ":bprevious<CR>", { desc = "Previous Buffer" })
u.key("n", "<leader><Tab>", "<C-^>", { desc = "Alternate Buffer" })

-- navigate windows

u.key("n", "<C-h>", "<C-w>h")
u.key("n", "<C-j>", "<C-w>j")
u.key("n", "<C-k>", "<C-w>k")
u.key("n", "<C-l>", "<C-w>l")
u.key("n", "<C-Left>", "<C-w>h")
u.key("n", "<C-Down>", "<C-w>j")
u.key("n", "<C-Up>", "<C-w>k")
u.key("n", "<C-Right>", "<C-w>l")

-- expand selection

u.key({ "x", "o" }, "v", function()
    if vim.treesitter.get_parser(nil, nil, { error = false }) then
        require("vim.treesitter._select").select_parent(vim.v.count1)
    else
        vim.lsp.buf.selection_range(vim.v.count1)
    end
end, { desc = "Expand selection (treesitter/lsp)" })

-- update packages
u.key("n", "<leader>pu", vim.pack.update, { desc = "Update Packages" })

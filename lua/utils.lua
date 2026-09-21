local M = {}

M.g = vim.g
M.o = vim.opt
M.ol = vim.opt_local

M.auto = vim.api.nvim_create_autocmd
M.cmd = vim.api.nvim_create_user_command

function M.key(mode, lhs, rhs, opts)
    local options = { noremap = true, silent = true }
    if opts then
        options = vim.tbl_extend("force", options, opts)
    end
    vim.keymap.set(mode, lhs, rhs, options)
end

function M.hl(group, opts)
    vim.api.nvim_set_hl(0, group, opts)
end

return M

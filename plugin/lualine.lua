vim.pack.add({ "https://github.com/nvim-lualine/lualine.nvim" })

local symbols = require("symbols")

require("lualine").setup({
    extensions = {
        "man",
    },
    sections = {
        lualine_a = {
            {
                "mode",
                fmt = function(mode_name)
                    return mode_name:sub(1, 1)
                end,
            },
            {
                "project",
            },
            {
                "filename",
                newfile_status = true,
                symbols = {
                    modified = symbols.modified,
                    readonly = symbols.readonly,
                    newfile = symbols.newfile,
                    unnamed = symbols.unnamed,
                },
            },
        },
        lualine_b = {
            {
                "branch",
                icon = "",
            },
        },
        lualine_c = {
            {
                "diff",
                -- TODO: without this, diff info only seems to update after save
                source = function()
                    local gitsigns = vim.b.gitsigns_status_dict
                    if gitsigns then
                        return {
                            added = gitsigns.added,
                            modified = gitsigns.changed,
                            removed = gitsigns.removed,
                        }
                    end
                end,
            },
        },
        lualine_x = {
            {
                "searchcount",
                maxcount = 999,
                timeout = 500,
            },
            {
                "diagnostics",
            },
        },
        lualine_y = {
            {
                "filetype",
                colored = false,
                icons_enabled = false,
                separator = "⋮",
            },
            {
                function()
                    local lsp = vim.lsp.get_clients({ bufnr = 0 })
                    if #lsp == 0 then
                        return ""
                    end
                    return symbols.lsp
                end,
                separator = "",
                on_click = function()
                    vim.cmd(":checkhealth vim.lsp")
                end,
            },
            {
                function()
                    local formatters = require("conform").list_formatters(0)
                    if #formatters == 0 then
                        return ""
                    end
                    return symbols.formatter
                end,
                separator = "",
                on_click = function()
                    vim.cmd(":checkhealth conform")
                end,
            },
        },
        lualine_z = {
            {
                "location",
            },
            {
                "progress",
            },
            {
                "fileformat",
                symbols = {
                    unix = symbols.unix,
                    dos = symbols.dos,
                    mac = symbols.mac,
                },
            },
        },
    },
    inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = {
            {
                "filename",
                newfile_status = true,
                symbols = {
                    modified = symbols.modified,
                    readonly = symbols.readonly,
                    newfile = symbols.newfile,
                    unnamed = symbols.unnamed,
                },
            },
        },
        lualine_x = {
            {
                "location",
            },
        },
        lualine_y = {},
        lualine_z = {},
    },
})

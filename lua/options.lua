local u = require("utils")

-- globals

u.g.mapleader = " "
u.g.maplocalleader = ","
u.g.editorconfig = true

-- backup, undo

u.o.backup = false
u.o.writebackup = false
u.o.swapfile = false
u.o.undofile = false

-- statuscolumn

u.o.number = true
u.o.relativenumber = true
u.o.numberwidth = 2
u.o.signcolumn = "yes"

-- command line

u.o.cmdheight = 0

-- cursor

u.o.cursorline = true
u.o.cursorlineopt = "number,line"
u.o.scrolloff = 5
u.o.sidescrolloff = 8

-- wrap (off by default)

u.o.wrap = false
u.o.linebreak = true
u.o.breakindent = true
u.o.showbreak = "↳ "

-- indent

u.o.tabstop = 4
u.o.expandtab = true
u.o.shiftwidth = 4
u.o.shiftround = true

-- folds

u.o.foldcolumn = "1"
u.o.foldlevelstart = 99
u.o.foldmethod = "expr"
u.o.foldexpr = "v:lua.vim.treesitter.foldexpr()"
u.o.foldtext = "getline(v:foldstart) . ' (' . (v:foldend - v:foldstart) . ' lines) '"

-- splits

u.o.splitbelow = true
u.o.splitright = true
u.o.splitkeep = "topline"

-- case sensitivity

u.o.ignorecase = true
u.o.smartcase = true

-- other

u.o.clipboard = "unnamedplus"
u.o.winborder = "rounded"
u.o.updatetime = 500 -- default is 4000
u.o.timeoutlen = 500 -- default is 1000
u.o.confirm = true
u.o.showmode = false
u.o.termguicolors = true
u.o.fillchars = {
    diff = "░",
    eob = " ",
    fold = "·",
    foldopen = "-",
    foldclose = "▶",
    foldsep = " ",
    msgsep = "━",
}

-- completion

-- TODO: need to understand these options better, esp. w.r.t. blink.cmp
u.o.completeopt = "menuone,popup,noselect,noinsert,fuzzy" -- More intuitive completion options
u.o.pumheight = 10 -- Limit completion window up to 10 lines

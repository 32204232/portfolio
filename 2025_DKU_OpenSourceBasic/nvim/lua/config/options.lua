local opt = vim.opt

-- tab/indent
opt.tabstop = 4
opt.shiftwidth = 4
opt.softtabstop = 4
opt.expandtab = true
opt.smarttab = true
opt.smartindent = true
opt.wrap = true
opt.linebreak = true
opt.showbreak = ">>> "

-- search
opt.incsearch = true
opt.ignorecase = true
opt.smartcase = true
opt.showmatch = true

-- visual
opt.number = true
opt.relativenumber = true
opt.termguicolors = true
-- opt.signcolumn = "yes"
opt.signcolumn = "number"

-- etc
opt.encoding = "UTF-8"
opt.cmdheight = 1
opt.scrolloff = 10
opt.mouse = ""
opt.swapfile = false

-- assembly
-- opt.ft = "nasm"

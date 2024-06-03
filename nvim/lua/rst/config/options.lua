local opt = vim.opt

opt.shell = "/bin/bash"
opt.backspace = "indent,eol,start"
opt.cursorline = true
opt.expandtab = true
opt.ignorecase = true
opt.mouse = "a"
opt.number = true
opt.relativenumber = true
opt.scrolloff = 4
opt.shiftwidth = 4
opt.showmode = false
opt.sidescrolloff = 8
opt.signcolumn = "yes"
opt.smartcase = true
opt.smartindent = true
opt.splitbelow = true
opt.splitkeep = "screen"
opt.splitright = true
opt.tabstop = 4
opt.termguicolors = true
opt.timeoutlen = 300
opt.undofile = true
opt.undolevels = 10000
opt.wrap = false
opt.linebreak = true

opt.foldlevel = 99
opt.foldmethod = "expr"
opt.foldexpr = "nvim_treesitter#foldexpr()"

opt.fillchars = {
    foldopen = "",
    foldclose = "",
    fold = " ",
    foldsep = " ",
    diff = "/",
    eob = " ",
}

opt.colorcolumn = "120"

opt.clipboard:append("unnamedplus")
vim.cmd([[
let g:clipboard = {
	\	'name': 'WslClipboard',
	\	'copy': {
	\		'+': 'clip.exe',
	\		'*': 'clip.exe',
	\	},
	\	'paste': {
	\		'+': 'powershell.exe -c [Console]::Out.Write($(Get-Clipboard -Raw).toString().replace("`r", ""))',
	\		'*': 'powershell.exe -c [Console]::Out.Write($(Get-Clipboard -Raw).toString().replace("`r", ""))',
	\	},
	\	'cache_enabled': 0,
	\ }
]])


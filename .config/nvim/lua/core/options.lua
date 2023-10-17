local opts = {
	shiftwidth = 4,
	tabstop = 4,
	expandtab = true,
	wrap = true,
	termguicolors = true,
	number = true,
	relativenumber = true,
        undofile = true,
        undodir = os.getenv("HOME").."/.vim/undodir",
        undolevels = 10000,
}

-- Set options from table
for opt, val in pairs(opts) do
	vim.o[opt] = val
end

vim.g.python3_host_prog = "/usr/bin/python3.11"

-- Set other options
local colorscheme = require("helpers.colorscheme")
vim.cmd.colorscheme(colorscheme)

-- WSL Clipboard
-- vim.g.clipboard = {
   -- name = "WslClipboard",
   -- copy = {
     --  ["+"] = "clip.exe",
      -- ["*"] = "clip.exe"
    -- },
   -- paste = {
      -- ["+"] = "powershell.exe -c [Console]::Out.Write($(Get-Clipboard -Raw).tostring().replace(\"`r\", \"\"))",
      -- ["*"] = "powershell.exe -c [Console]::Out.Write($(Get-Clipboard -Raw).tostring().replace(\"`r\", \"\"))"
   -- },
   -- cache_enabled= 0,
 -- }
vim.opt.clipboard = 'unnamed'

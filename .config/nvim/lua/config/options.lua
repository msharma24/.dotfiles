local options = {
  joinspaces = true,
  laststatus =2,
  lazyredraw = true,
  linebreak = true,
  list = true,
  pumblend = 10,
  smarttab = true,
  showcmd = false,
  backup = false,
  clipboard = "unnamedplus",
  cmdheight = 2,
  completeopt = { "menuone", "noselect" },
  conceallevel = 0,
  fileencoding = "utf-8",
  hlsearch = true,
  ignorecase = true,
  mouse = "a",
  pumheight = 10,
  showmode = false,
  showtabline = 2,
  smartcase = true,
  smartindent = true,
  splitbelow = true,
  splitright = true,
  swapfile = false,
  termguicolors = true,
  timeoutlen = 1000,
  undofile = true,
  updatetime = 300,
  writebackup = false,
  expandtab = true,
  shiftwidth = 2,
  tabstop = 2,
  cursorline = true,
  number = true,
  relativenumber = true,
  numberwidth = 4,
  signcolumn = "yes",
  wrap = false,
  scrolloff = 8,
  sidescrolloff = 8,
}

if not vi then
  vim.opt.softtabstop = -1 -- use 'shiftwidth' for tab/bs at end of line
end

vim.opt.shortmess:append "c"

for k, v in pairs(options) do
  vim.opt[k] = v
end

vim.cmd "set whichwrap+=<,>,[,],h,l"
vim.cmd [[set iskeyword+=-]]


if vim.fn.filereadable('/usr/local/bin/python3') == 1 then
  -- speeding up start-up.
  vim.g.python3_host_prog = '/usr/local/bin/python3'
end
  

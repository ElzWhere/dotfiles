require 'core.options'

require 'core.keymaps'


local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = 'https://github.com/folke/lazy.nvim.git'
  local out = vim.fn.system { 'git', 'clone', '--filter=blob:none', '--branch=stable', lazyrepo, lazypath }
  if vim.v.shell_error ~= 0 then
    error('Error cloning lazy.nvim:\n' .. out)
  end
end
vim.opt.rtp:prepend(lazypath)

-- Import color theme based on environment variable NVIM_THEME
local default_color_scheme = 'onedark'
local env_var_nvim_theme = os.getenv 'NVIM_THEME' or default_color_scheme

-- Define a table of theme modules
local themes = {
  nord = 'plugins.themes.nord',
  onedark = 'plugins.themes.onedark',
}

require('lazy').setup({
   require(themes[env_var_nvim_theme]),
   require 'plugins.dashboard',
   require 'plugins.neotree',
   require 'plugins.wu',
   require 'plugins.staline',
   require 'plugins.bufferline',
   require 'plugins.treesitter',
   require 'plugins.telescope',
   require 'plugins.autocompletion',
   require 'plugins.lsp',
   require 'plugins.avante',
   require 'plugins.fugitive',
   require 'plugins.which-key',
})

-- Function to apply transparency settings globally
local function set_transparency()
vim.cmd([[
hi Normal guibg=NONE ctermbg=NONE
hi NormalNC guibg=NONE ctermbg=NONE
hi SignColumn guibg=NONE ctermbg=NONE
hi StatusLine guibg=NONE ctermbg=NONE
hi StatusLineNC guibg=NONE ctermbg=NONE
hi VertSplit guibg=NONE ctermbg=NONE
hi TabLine guibg=NONE ctermbg=NONE
hi TabLineFill guibg=NONE ctermbg=NONE
hi TabLineSel guibg=NONE ctermbg=NONE
hi Pmenu guibg=NONE ctermbg=NONE
hi PmenuSel guibg=NONE ctermbg=NONE
hi NeoTreeNormal guibg=NONE ctermbg=NONE
hi NeoTreeNormalNC guibg=NONE ctermbg=NONE
hi NeoTreeWinSeparator guibg=NONE ctermbg=NONE
]])
end

-- Apply transparency settings initially
set_transparency()

-- Set up neo-tree with default settings and no custom mappings
require('neo-tree').setup({
window = {
-- Use default settings with no custom mappings
},
})

-- Reapply transparency on buffer enter
vim.api.nvim_create_autocmd("BufEnter", {
pattern = "*",
callback = set_transparency,
})

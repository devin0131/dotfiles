-- cursor color: #61AFEF
-- local colorscheme = "catppuccin"
-- local colorscheme = "darkplus"
-- local colorscheme = "github_light"
-- local colorscheme = "vscode"
-- require "user.conf.github-nvim-theme"
-- local colorscheme = "default"
-- local colorscheme = "gruvbox"
local colorscheme = "nightfox"
-- local colorscheme = "zenburn"

if colorscheme == "onedark" then
  require "user.themes.onedark"
elseif colorscheme == "catppuccin" then
  require "user.themes.catppuccin"
elseif colorscheme == "github_dark" then
  require('github-theme').setup({
    theme_style = "dark",
    sidebars = {"qf", "vista_kind", "terminal", "packer"},
  })
elseif colorscheme == "vscode" then
  --vim.g.vscode_transparent = 0
elseif colorscheme == "gruvbox" then
  vim.opt.background = "dark"
elseif colorscheme == "nightfox" then
  require "user.themes.nightfox"
elseif colorscheme == "zenburn" then
  require "user.themes.zenburn"
end

vim.cmd('colorscheme ' .. colorscheme)



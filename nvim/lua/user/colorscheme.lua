-- cursor color: #61AFEF
-- local colorscheme = "catppuccin"
-- local colorscheme = "darkplus"
-- local colorscheme = "github_light"
local colorscheme = "vscode"
-- require "user.conf.github-nvim-theme"

local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
  vim.notify("colorscheme " .. colorscheme .. " not found!")
  return
end

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
end

vim.cmd('colorscheme ' .. colorscheme)



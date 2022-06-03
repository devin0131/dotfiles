local status_ok, catppuccin = pcall(require, "catppuccin")
if not status_ok then
  return
end
local config = {
  transparent_background = false,
  term_colors = true,
  -- styles = {    -- TODO: style setting doesn't work
  --   comments = "underline",
  --   functions = "bold",
  --   keywords = "NONE",
  --   strings = "underline",
  --   variables = "NONE",
  -- },
  integrations = {
    treesitter = true,
    native_lsp = {
      enabled = true,
      virtual_text = {
        errors = "italic",
        hints = "italic",
        warnings = "italic",
        information = "italic",
      },
      underlines = {
        errors = "underline",
        hints = "underline",
        warnings = "underline",
        information = "underline",
      },
    },
    lsp_trouble = false,
    cmp = true,
    lsp_saga = false,
    gitgutter = false,
    gitsigns = true,
    telescope = true,
    nvimtree = {
      enabled = true,
      show_root = true,
      transparent_panel = false,
    },
    neotree = {
      enabled = false,
      show_root = false,
      transparent_panel = false,
    },
    which_key = true,
    indent_blankline = {
      enabled = true,
      colored_indent_levels = true,
    },
    dashboard = true,
    neogit = false,
    vim_sneak = false,
    fern = false,
    barbar = false,
    bufferline = false,
    markdown = true,
    lightspeed = false,
    ts_rainbow = false,
    hop = true,
    notify = true,
    telekasten = true,
    symbols_outline = true,
  }
}
catppuccin.setup( config )
-- latte, frappe, macchiato, mocha
vim.g.catppuccin_flavour = "frappe"


--local cp = require("catppuccin.api.colors").get_colors()
--
--
--local custom_color = {
--  background = "#1b1b1b",
--  -- navigator = "#252526",
--  navigator = "#0a0a0a",
--  bound = "#333333",
--  none = "NONE",
--}
--custom_color.background = custom_color.none
--catppuccin.remap({
--  -- Normal = {bg = "#000000"},
--  Normal = { fg = cp.text, bg = custom_color.background }, -- normal text
--  NormalNC = { fg = cp.text, bg = custom_color.background }, -- normal text in non-current windows
--  SignColumn = { fg = cp.surface1, bg = custom_color.background},
--  NvimTreeVertSplit = { bg = custom_color.bound},
--  NvimTreeNormal = { fg = cp.text, bg = custom_color.navigator},
--  NvimTreeStatuslineNc = {fg = cp.text, bg = "#000000"},
--  -- NvimTreeStatusLine = {fg = cp.text, bg = "#000000" }, -- StatusLine = { fg = "#FFFFFF", bg = "#000000"},
--  -- StatusLineNC = { fg = cp.text, bg = "#000000" },
--  StatusLine = { fg = cp.none, bg = "#000000"},
--
--})
-- 设置透明状态下的remap
-- if config.transparent_background then
--   local remapColor = {
--       NormalFloat = {fg = cp.none, bg = cp.none }, 
--       StatusLine = {fg = cp.none, bg = cp.none },
--       StatusLineNC = { fg = cp.none, bg = cp.none },
--   }
--   -- local lualineRemap = {
--   --   lualine_c_normal = {fg = cp.none , bg = cp.none},
--   --   lualine_c_inactive = {fg = cp.none , bg = cp.none}
--   -- }
-- 
--   -- remapColor = vim.tbl_deep_extend(
--   --   "force",
--   --   remapColor,
--   --   lualineRemap
--   -- )
--   local cot = false
--   if type(config.integrations.nvimtree) == "table" then
--     if config.integrations.nvimtree["enabled"] == true then
--       cot = true
--     end
--   else
--     if config.integrations.nvimtree["enabled"] == true then
--       cot = true
--     end
--   end
--   if cot then
--     remapColor = vim.tbl_deep_extend(
--       "force",
--       remapColor,
--       {
--         NvimTreeVertSplit = {fg = cp.none, bg = cp.none},
--         NvimTreeStatuslineNc = {fg = cp.none, bg = cp.none},
--         NvimTreeStatusLine = {fg = cp.none, bg = cp.none },
--       }
--     )
--   end
--   cot = false
--   catppuccin.remap(remapColor)
-- end




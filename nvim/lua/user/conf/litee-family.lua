-- configure the litee.nvim library 
local status_ok, litee_lib = pcall(require, "litee.lib")
if not status_ok then
  vim.notify("litee_lib not found!")
  return
end

local status_ok, litee_calltree = pcall(require, "litee.calltree")
if not status_ok then
  vim.notify("litee_calltree not found!")
  return
end
local status_ok, litee_symboltree = pcall(require, "litee.symboltree")
if not status_ok then
  vim.notify("litee_symboltree not found!")
  return
end
-- vim.notify("目前是成功的。")

litee_lib.setup({
  -- tree = {
  --   icon_set = "default",
  --   -- icon_set = "default",
  -- },
  panel = {
       orientation = "right",
       panel_size  = 50,
  },
})

litee_symboltree.setup({
   on_open = "panel",
})
-- configure litee-calltree.nvim
-- commands: LTOpenToCalltree to open calltree
litee_calltree.setup({
  on_open = "panel",
  -- icon_set_custom = "codicons"
})





local status_ok, zenburn = pcall(require, "zenburn")
if not status_ok then
  vim.notify("zenburn theme not found!")
  return
end


zenburn.setup()

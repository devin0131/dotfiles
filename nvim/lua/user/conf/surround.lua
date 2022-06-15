local status_ok, surround = pcall(require, "surround")
if not status_ok then
  vim.notify("surround spellsitter not found")
	return
end


local config = {
  context_offset = 100,
  load_autogroups = false,
  mappings_style = "surround",
  map_insert_mode = true,
  quotes = {"'", '"'},
  brackets = {"(", '{', '['},
  space_on_closing_char = false,
  pairs = {
    nestable = { b = { "(", ")" }, s = { "[", "]" }, B = { "{", "}" }, a = { "<", ">" } },
    linear = { q = { "'", "'" }, t = { "`", "`" }, d = { '"', '"' } },
  },
  prefix = "s",
}
surround.setup(config)



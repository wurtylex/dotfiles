ls = require("luasnip")

ls.config.set_config({
  history = false,
  enable_autosnippets = true,
  store_selection_keys = "<Tab>",
})

require("luasnip.loaders.from_lua").load({ paths = "~/.config/nvim/lua/snippets/" })
vim.cmd([[silent command! LuaSnipEdit :lua require("luasnip.loaders").edit_snippet_files()]])

vim.keymap.set("i", "<A-.>", function()
  if ls.choice_active() then
    return ls.change_choice(1)
  else
    return _G.dynamic_node_external_update(1)
  end
end, { noremap = true })
vim.keymap.set("s", "<A-.>", function()
  if ls.choice_active() then
    return ls.change_choice(1)
  else
    return _G.dynamic_node_external_update(1)
  end
end, { noremap = true })
vim.keymap.set("i", "<A-,>", function()
  if ls.choice_active() then
    return ls.change_choice(-1)
  else
    return _G.dynamic_node_external_update(2)
  end
end, { noremap = true })
vim.keymap.set("s", "<A-,>", function()
  if ls.choice_active() then
    return ls.change_choice(-1)
  else
    return _G.dynamic_node_external_update(2)
  end
end, { noremap = true })

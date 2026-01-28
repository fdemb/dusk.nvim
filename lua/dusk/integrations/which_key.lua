local M = {}

function M.setup(c)
  local hl = vim.api.nvim_set_hl

  hl(0, "WhichKey", { fg = c.pink })
  hl(0, "WhichKeyBorder", { fg = c.surface2, bg = c.surface0 })
  hl(0, "WhichKeyDesc", { fg = c.text })
  hl(0, "WhichKeyGroup", { fg = c.blue })
  hl(0, "WhichKeyIcon", { fg = c.pink })
  hl(0, "WhichKeyIconAzure", { fg = c.sapphire })
  hl(0, "WhichKeyIconBlue", { fg = c.blue })
  hl(0, "WhichKeyIconCyan", { fg = c.teal })
  hl(0, "WhichKeyIconGreen", { fg = c.green })
  hl(0, "WhichKeyIconGrey", { fg = c.subtext0 })
  hl(0, "WhichKeyIconOrange", { fg = c.peach })
  hl(0, "WhichKeyIconPurple", { fg = c.mauve })
  hl(0, "WhichKeyIconRed", { fg = c.red })
  hl(0, "WhichKeyIconYellow", { fg = c.yellow })
  hl(0, "WhichKeyNormal", { fg = c.text, bg = c.surface0 })
  hl(0, "WhichKeySeparator", { fg = c.overlay2 })
  hl(0, "WhichKeyTitle", { fg = c.pink, bg = c.surface0, bold = true })
  hl(0, "WhichKeyValue", { fg = c.subtext0 })
end

return M

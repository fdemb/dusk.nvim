local M = {}

function M.setup(c)
  local hl = vim.api.nvim_set_hl
  hl(0, "GitSignsAdd", { fg = c.green })
  hl(0, "GitSignsChange", { fg = c.peach })
  hl(0, "GitSignsDelete", { fg = c.red })
  hl(0, "GitSignsAddNr", { fg = c.green })
  hl(0, "GitSignsChangeNr", { fg = c.peach })
  hl(0, "GitSignsDeleteNr", { fg = c.red })
  hl(0, "GitSignsAddLn", { bg = "#272c25" })
  hl(0, "GitSignsChangeLn", { bg = "#2e2922" })
  hl(0, "GitSignsDeleteLn", { bg = "#2e2325" })
  hl(0, "GitSignsAddInline", { bg = "#2f3a2a" })
  hl(0, "GitSignsChangeInline", { bg = "#3a3328" })
  hl(0, "GitSignsDeleteInline", { bg = "#3a282c" })
  hl(0, "GitSignsAddPreview", { fg = c.green, bg = "#272c25" })
  hl(0, "GitSignsDeletePreview", { fg = c.red, bg = "#2e2325" })
  hl(0, "GitSignsCurrentLineBlame", { fg = c.overlay2, italic = true })
  hl(0, "GitSignsAddLnInline", { bg = "#38452f" })
  hl(0, "GitSignsChangeLnInline", { bg = "#453c2d" })
  hl(0, "GitSignsDeleteLnInline", { bg = "#452d32" })
  hl(0, "GitSignsDeleteVirtLn", { fg = c.red })
  hl(0, "GitSignsDeleteVirtLnInLine", { fg = c.red })
  hl(0, "GitSignsVirtLnum", { fg = c.overlay1 })
end

return M

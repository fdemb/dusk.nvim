local M = {}

function M.setup(c)
  local hl = vim.api.nvim_set_hl

  hl(0, "FlashBackdrop", { fg = c.overlay2 })
  hl(0, "FlashMatch", { fg = c.text, bg = c.surface2 })
  hl(0, "FlashCurrent", { fg = c.base, bg = c.pink, bold = true })
  hl(0, "FlashLabel", { fg = c.base, bg = c.pink, bold = true })
  hl(0, "FlashPrompt", { fg = c.text, bg = c.surface0 })
  hl(0, "FlashPromptIcon", { fg = c.pink })
  hl(0, "FlashCursor", { reverse = true })
end

return M

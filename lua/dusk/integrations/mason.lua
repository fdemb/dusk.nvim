local M = {}

function M.setup(c)
  local hl = vim.api.nvim_set_hl

  hl(0, "MasonNormal", { fg = c.text, bg = c.surface0 })
  hl(0, "MasonHeader", { fg = c.base, bg = c.pink, bold = true })
  hl(0, "MasonHeaderSecondary", { fg = c.base, bg = c.blue, bold = true })
  hl(0, "MasonHighlight", { fg = c.pink })
  hl(0, "MasonHighlightBlock", { fg = c.base, bg = c.pink })
  hl(0, "MasonHighlightBlockBold", { fg = c.base, bg = c.pink, bold = true })
  hl(0, "MasonHighlightBlockBoldSecondary", { fg = c.base, bg = c.blue, bold = true })
  hl(0, "MasonHighlightBlockSecondary", { fg = c.base, bg = c.blue })
  hl(0, "MasonHighlightSecondary", { fg = c.blue })
  hl(0, "MasonMuted", { fg = c.overlay2 })
  hl(0, "MasonMutedBlock", { fg = c.subtext0, bg = c.surface1 })
  hl(0, "MasonMutedBlockBold", { fg = c.subtext0, bg = c.surface1, bold = true })
  hl(0, "MasonError", { fg = c.red })
  hl(0, "MasonWarning", { fg = c.peach })
  hl(0, "MasonHeading", { fg = c.text, bold = true })
  hl(0, "MasonLink", { fg = c.blue, underline = true })
end

return M

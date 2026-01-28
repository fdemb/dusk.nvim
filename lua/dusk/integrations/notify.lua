local M = {}

function M.setup(c)
  local hl = vim.api.nvim_set_hl

  hl(0, "NotifyBackground", { bg = c.surface0 })

  hl(0, "NotifyERRORBorder", { fg = c.red })
  hl(0, "NotifyERRORIcon", { fg = c.red })
  hl(0, "NotifyERRORTitle", { fg = c.red, bold = true })
  hl(0, "NotifyERRORBody", { fg = c.text })

  hl(0, "NotifyWARNBorder", { fg = c.peach })
  hl(0, "NotifyWARNIcon", { fg = c.peach })
  hl(0, "NotifyWARNTitle", { fg = c.peach, bold = true })
  hl(0, "NotifyWARNBody", { fg = c.text })

  hl(0, "NotifyINFOBorder", { fg = c.blue })
  hl(0, "NotifyINFOIcon", { fg = c.blue })
  hl(0, "NotifyINFOTitle", { fg = c.blue, bold = true })
  hl(0, "NotifyINFOBody", { fg = c.text })

  hl(0, "NotifyDEBUGBorder", { fg = c.subtext0 })
  hl(0, "NotifyDEBUGIcon", { fg = c.subtext0 })
  hl(0, "NotifyDEBUGTitle", { fg = c.subtext0, bold = true })
  hl(0, "NotifyDEBUGBody", { fg = c.text })

  hl(0, "NotifyTRACEBorder", { fg = c.mauve })
  hl(0, "NotifyTRACEIcon", { fg = c.mauve })
  hl(0, "NotifyTRACETitle", { fg = c.mauve, bold = true })
  hl(0, "NotifyTRACEBody", { fg = c.text })

  hl(0, "NotifyLogTime", { fg = c.subtext0 })
  hl(0, "NotifyLogTitle", { fg = c.pink, bold = true })
end

return M

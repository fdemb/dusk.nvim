local M = {}

function M.setup(c)
  local hl = vim.api.nvim_set_hl

  hl(0, "IblIndent", { fg = c.surface1 })
  hl(0, "IblWhitespace", { fg = c.surface1 })
  hl(0, "IblScope", { fg = c.pink })

  hl(0, "IndentBlanklineChar", { fg = c.surface1 })
  hl(0, "IndentBlanklineSpaceChar", { fg = c.surface1 })
  hl(0, "IndentBlanklineSpaceCharBlankline", { fg = c.surface1 })
  hl(0, "IndentBlanklineContextChar", { fg = c.pink })
  hl(0, "IndentBlanklineContextSpaceChar", { fg = c.pink })
  hl(0, "IndentBlanklineContextStart", { sp = c.pink, underline = true })

  hl(0, "RainbowRed", { fg = c.red })
  hl(0, "RainbowYellow", { fg = c.peach })
  hl(0, "RainbowBlue", { fg = c.blue })
  hl(0, "RainbowOrange", { fg = c.yellow })
  hl(0, "RainbowGreen", { fg = c.green })
  hl(0, "RainbowViolet", { fg = c.mauve })
  hl(0, "RainbowCyan", { fg = c.teal })
end

return M

local M = {}

function M.setup(c)
  local hl = vim.api.nvim_set_hl

  hl(0, "CmpItemAbbr", { fg = c.text })
  hl(0, "CmpItemAbbrDeprecated", { fg = c.overlay2, strikethrough = true })
  hl(0, "CmpItemAbbrMatch", { fg = c.pink, bold = true })
  hl(0, "CmpItemAbbrMatchFuzzy", { fg = c.pink, bold = true })
  hl(0, "CmpItemKind", { fg = c.blue })
  hl(0, "CmpItemMenu", { fg = c.subtext0 })

  hl(0, "CmpItemKindClass", { fg = c.teal })
  hl(0, "CmpItemKindColor", { fg = c.peach })
  hl(0, "CmpItemKindConstant", { fg = c.peach })
  hl(0, "CmpItemKindConstructor", { fg = c.blue })
  hl(0, "CmpItemKindCopilot", { fg = c.green })
  hl(0, "CmpItemKindEnum", { fg = c.teal })
  hl(0, "CmpItemKindEnumMember", { fg = c.teal })
  hl(0, "CmpItemKindEvent", { fg = c.peach })
  hl(0, "CmpItemKindField", { fg = c.text })
  hl(0, "CmpItemKindFile", { fg = c.blue })
  hl(0, "CmpItemKindFolder", { fg = c.blue })
  hl(0, "CmpItemKindFunction", { fg = c.blue })
  hl(0, "CmpItemKindInterface", { fg = c.teal })
  hl(0, "CmpItemKindKeyword", { fg = c.pink })
  hl(0, "CmpItemKindMethod", { fg = c.blue })
  hl(0, "CmpItemKindModule", { fg = c.text })
  hl(0, "CmpItemKindOperator", { fg = c.blue })
  hl(0, "CmpItemKindProperty", { fg = c.text })
  hl(0, "CmpItemKindReference", { fg = c.pink })
  hl(0, "CmpItemKindSnippet", { fg = c.peach })
  hl(0, "CmpItemKindStruct", { fg = c.teal })
  hl(0, "CmpItemKindText", { fg = c.text })
  hl(0, "CmpItemKindTypeParameter", { fg = c.teal })
  hl(0, "CmpItemKindUnit", { fg = c.teal })
  hl(0, "CmpItemKindValue", { fg = c.peach })
  hl(0, "CmpItemKindVariable", { fg = c.text })

  hl(0, "CmpDocumentation", { fg = c.text, bg = c.surface0 })
  hl(0, "CmpDocumentationBorder", { fg = c.surface2, bg = c.surface0 })
end

return M

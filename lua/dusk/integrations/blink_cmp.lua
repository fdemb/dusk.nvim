local M = {}

function M.setup(c)
  local hl = vim.api.nvim_set_hl

  hl(0, "BlinkCmpMenu", { fg = c.text, bg = c.surface0 })
  hl(0, "BlinkCmpMenuBorder", { fg = c.surface2, bg = c.surface0 })
  hl(0, "BlinkCmpMenuSelection", { bg = c.surface2 })

  hl(0, "BlinkCmpDoc", { fg = c.text, bg = c.surface0 })
  hl(0, "BlinkCmpDocBorder", { fg = c.surface2, bg = c.surface0 })
  hl(0, "BlinkCmpDocCursorLine", { bg = c.surface1 })
  hl(0, "BlinkCmpDocSeparator", { fg = c.surface2, bg = c.surface0 })

  hl(0, "BlinkCmpSignatureHelp", { fg = c.text, bg = c.surface0 })
  hl(0, "BlinkCmpSignatureHelpBorder", { fg = c.surface2, bg = c.surface0 })
  hl(0, "BlinkCmpSignatureHelpActiveParameter", { fg = c.pink, bold = true })

  hl(0, "BlinkCmpLabel", { fg = c.text })
  hl(0, "BlinkCmpLabelDeprecated", { fg = c.overlay2, strikethrough = true })
  hl(0, "BlinkCmpLabelMatch", { fg = c.pink, bold = true })
  hl(0, "BlinkCmpLabelDetail", { fg = c.subtext0 })
  hl(0, "BlinkCmpLabelDescription", { fg = c.subtext0 })

  hl(0, "BlinkCmpSource", { fg = c.subtext0 })
  hl(0, "BlinkCmpGhostText", { fg = c.overlay2, italic = true })

  hl(0, "BlinkCmpKind", { fg = c.blue })
  hl(0, "BlinkCmpKindClass", { fg = c.teal })
  hl(0, "BlinkCmpKindColor", { fg = c.peach })
  hl(0, "BlinkCmpKindConstant", { fg = c.peach })
  hl(0, "BlinkCmpKindConstructor", { fg = c.blue })
  hl(0, "BlinkCmpKindCopilot", { fg = c.green })
  hl(0, "BlinkCmpKindEnum", { fg = c.teal })
  hl(0, "BlinkCmpKindEnumMember", { fg = c.teal })
  hl(0, "BlinkCmpKindEvent", { fg = c.peach })
  hl(0, "BlinkCmpKindField", { fg = c.text })
  hl(0, "BlinkCmpKindFile", { fg = c.blue })
  hl(0, "BlinkCmpKindFolder", { fg = c.blue })
  hl(0, "BlinkCmpKindFunction", { fg = c.blue })
  hl(0, "BlinkCmpKindInterface", { fg = c.teal })
  hl(0, "BlinkCmpKindKeyword", { fg = c.pink })
  hl(0, "BlinkCmpKindMethod", { fg = c.blue })
  hl(0, "BlinkCmpKindModule", { fg = c.text })
  hl(0, "BlinkCmpKindOperator", { fg = c.blue })
  hl(0, "BlinkCmpKindProperty", { fg = c.text })
  hl(0, "BlinkCmpKindReference", { fg = c.pink })
  hl(0, "BlinkCmpKindSnippet", { fg = c.peach })
  hl(0, "BlinkCmpKindStruct", { fg = c.teal })
  hl(0, "BlinkCmpKindText", { fg = c.text })
  hl(0, "BlinkCmpKindTypeParameter", { fg = c.teal })
  hl(0, "BlinkCmpKindUnit", { fg = c.teal })
  hl(0, "BlinkCmpKindValue", { fg = c.peach })
  hl(0, "BlinkCmpKindVariable", { fg = c.text })

  hl(0, "BlinkCmpScrollBarThumb", { bg = c.overlay0 })
  hl(0, "BlinkCmpScrollBarGutter", { bg = c.surface1 })
end

return M

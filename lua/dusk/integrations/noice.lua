local M = {}

function M.setup(c)
  local hl = vim.api.nvim_set_hl

  hl(0, "NoiceCmdline", { fg = c.text })
  hl(0, "NoiceCmdlineIcon", { fg = c.pink })
  hl(0, "NoiceCmdlineIconSearch", { fg = c.peach })
  hl(0, "NoiceCmdlinePopup", { fg = c.text, bg = c.surface0 })
  hl(0, "NoiceCmdlinePopupBorder", { fg = c.surface2, bg = c.surface0 })
  hl(0, "NoiceCmdlinePopupBorderSearch", { fg = c.peach, bg = c.surface0 })
  hl(0, "NoiceCmdlinePrompt", { fg = c.pink })
  hl(0, "NoiceCompletionItemKindDefault", { fg = c.text })

  hl(0, "NoiceConfirm", { fg = c.text, bg = c.surface0 })
  hl(0, "NoiceConfirmBorder", { fg = c.surface2, bg = c.surface0 })

  hl(0, "NoiceFormatConfirm", { fg = c.pink })
  hl(0, "NoiceFormatConfirmDefault", { fg = c.pink })
  hl(0, "NoiceFormatDate", { fg = c.subtext0 })
  hl(0, "NoiceFormatEvent", { fg = c.subtext0 })
  hl(0, "NoiceFormatKind", { fg = c.blue })
  hl(0, "NoiceFormatLevelDebug", { fg = c.subtext0 })
  hl(0, "NoiceFormatLevelError", { fg = c.red })
  hl(0, "NoiceFormatLevelInfo", { fg = c.blue })
  hl(0, "NoiceFormatLevelOff", { fg = c.overlay2 })
  hl(0, "NoiceFormatLevelTrace", { fg = c.subtext0 })
  hl(0, "NoiceFormatLevelWarn", { fg = c.peach })
  hl(0, "NoiceFormatProgressDone", { fg = c.base, bg = c.pink })
  hl(0, "NoiceFormatProgressTodo", { fg = c.text, bg = c.surface1 })
  hl(0, "NoiceFormatTitle", { fg = c.pink, bold = true })

  hl(0, "NoiceLspProgressClient", { fg = c.blue })
  hl(0, "NoiceLspProgressSpinner", { fg = c.pink })
  hl(0, "NoiceLspProgressTitle", { fg = c.text })

  hl(0, "NoiceMini", { fg = c.text, bg = c.surface0 })
  hl(0, "NoicePopup", { fg = c.text, bg = c.surface0 })
  hl(0, "NoicePopupBorder", { fg = c.surface2, bg = c.surface0 })
  hl(0, "NoicePopupmenu", { fg = c.text, bg = c.surface0 })
  hl(0, "NoicePopupmenuBorder", { fg = c.surface2, bg = c.surface0 })
  hl(0, "NoicePopupmenuMatch", { fg = c.pink, bold = true })
  hl(0, "NoicePopupmenuSelected", { bg = c.surface2 })
  hl(0, "NoiceScrollbar", { bg = c.surface1 })
  hl(0, "NoiceScrollbarThumb", { bg = c.overlay0 })
  hl(0, "NoiceSplit", { fg = c.text, bg = c.surface0 })
  hl(0, "NoiceSplitBorder", { fg = c.surface2, bg = c.surface0 })
  hl(0, "NoiceVirtualText", { fg = c.subtext0 })
end

return M

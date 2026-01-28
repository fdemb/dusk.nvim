local M = {}

function M.setup(c)
  local hl = vim.api.nvim_set_hl

  -- Snacks dashboard
  hl(0, "SnacksDashboardNormal", { fg = c.text, bg = c.base })
  hl(0, "SnacksDashboardDesc", { fg = c.subtext0 })
  hl(0, "SnacksDashboardFile", { fg = c.blue })
  hl(0, "SnacksDashboardDir", { fg = c.subtext0 })
  hl(0, "SnacksDashboardFooter", { fg = c.subtext0, italic = true })
  hl(0, "SnacksDashboardHeader", { fg = c.pink, bold = true })
  hl(0, "SnacksDashboardIcon", { fg = c.pink })
  hl(0, "SnacksDashboardKey", { fg = c.peach })
  hl(0, "SnacksDashboardTerminal", { fg = c.text, bg = c.base })
  hl(0, "SnacksDashboardSpecial", { fg = c.teal })
  hl(0, "SnacksDashboardTitle", { fg = c.blue, bold = true })

  -- Snacks notifier
  hl(0, "SnacksNotifierBorderError", { fg = c.red })
  hl(0, "SnacksNotifierBorderWarn", { fg = c.peach })
  hl(0, "SnacksNotifierBorderInfo", { fg = c.blue })
  hl(0, "SnacksNotifierBorderDebug", { fg = c.subtext0 })
  hl(0, "SnacksNotifierBorderTrace", { fg = c.mauve })
  hl(0, "SnacksNotifierIconError", { fg = c.red })
  hl(0, "SnacksNotifierIconWarn", { fg = c.peach })
  hl(0, "SnacksNotifierIconInfo", { fg = c.blue })
  hl(0, "SnacksNotifierIconDebug", { fg = c.subtext0 })
  hl(0, "SnacksNotifierIconTrace", { fg = c.mauve })
  hl(0, "SnacksNotifierTitleError", { fg = c.red, bold = true })
  hl(0, "SnacksNotifierTitleWarn", { fg = c.peach, bold = true })
  hl(0, "SnacksNotifierTitleInfo", { fg = c.blue, bold = true })
  hl(0, "SnacksNotifierTitleDebug", { fg = c.subtext0, bold = true })
  hl(0, "SnacksNotifierTitleTrace", { fg = c.mauve, bold = true })
  hl(0, "SnacksNotifierError", { fg = c.text, bg = c.surface0 })
  hl(0, "SnacksNotifierWarn", { fg = c.text, bg = c.surface0 })
  hl(0, "SnacksNotifierInfo", { fg = c.text, bg = c.surface0 })
  hl(0, "SnacksNotifierDebug", { fg = c.text, bg = c.surface0 })
  hl(0, "SnacksNotifierTrace", { fg = c.text, bg = c.surface0 })

  -- Snacks picker
  hl(0, "SnacksPickerNormal", { fg = c.text, bg = c.surface0 })
  hl(0, "SnacksPickerBorder", { fg = c.surface2, bg = c.surface0 })
  hl(0, "SnacksPickerTitle", { fg = c.pink, bg = c.surface0, bold = true })
  hl(0, "SnacksPickerMatch", { fg = c.pink, bold = true })
  hl(0, "SnacksPickerSelected", { bg = c.surface2 })
  hl(0, "SnacksPickerDir", { fg = c.subtext0 })
  hl(0, "SnacksPickerFile", { fg = c.text })
  hl(0, "SnacksPickerCol", { fg = c.subtext0 })
  hl(0, "SnacksPickerRow", { fg = c.subtext0 })
  hl(0, "SnacksPickerComment", { fg = c.overlay2 })
  hl(0, "SnacksPickerIdx", { fg = c.peach })
  hl(0, "SnacksPickerIcon", { fg = c.text })
  hl(0, "SnacksPickerIconDirectory", { fg = c.blue })
  hl(0, "SnacksPickerPrompt", { fg = c.pink })
  hl(0, "SnacksPickerSpinner", { fg = c.pink })
  hl(0, "SnacksPickerTotals", { fg = c.subtext0 })
  hl(0, "SnacksPickerPreview", { bg = c.surface0 })
  hl(0, "SnacksPickerPreviewCursorLine", { bg = c.surface1 })
  hl(0, "SnacksPickerListCursorLine", { bg = c.surface2 })
  hl(0, "SnacksPickerInput", { fg = c.text, bg = c.surface1 })
  hl(0, "SnacksPickerInputBorder", { fg = c.surface1, bg = c.surface1 })
  hl(0, "SnacksPickerInputTitle", { fg = c.base, bg = c.pink, bold = true })

  -- Snacks indent
  hl(0, "SnacksIndent", { fg = c.surface1 })
  hl(0, "SnacksIndentScope", { fg = c.pink })
  hl(0, "SnacksIndentChunk", { fg = c.pink })

  -- Snacks git
  hl(0, "SnacksGitSignAdd", { fg = c.green })
  hl(0, "SnacksGitSignChange", { fg = c.peach })
  hl(0, "SnacksGitSignDelete", { fg = c.red })

  -- Snacks words
  hl(0, "SnacksWordsCurrent", { bg = "#332a30" })
  hl(0, "SnacksWordsOther", { bg = "#2d272b" })

  -- Snacks input
  hl(0, "SnacksInputNormal", { fg = c.text, bg = c.surface0 })
  hl(0, "SnacksInputBorder", { fg = c.surface2, bg = c.surface0 })
  hl(0, "SnacksInputTitle", { fg = c.pink, bg = c.surface0, bold = true })
  hl(0, "SnacksInputIcon", { fg = c.pink })

  -- Snacks scratch
  hl(0, "SnacksScratchNormal", { fg = c.text, bg = c.base })
  hl(0, "SnacksScratchKey", { fg = c.peach })
  hl(0, "SnacksScratchDesc", { fg = c.text })

  -- Snacks zen
  hl(0, "SnacksZen", { bg = c.base })

  -- Snacks profiler
  hl(0, "SnacksProfilerBadge", { fg = c.base, bg = c.pink })
  hl(0, "SnacksProfilerTitle", { fg = c.pink, bold = true })
  hl(0, "SnacksProfilerNormal", { fg = c.text, bg = c.surface0 })
end

return M

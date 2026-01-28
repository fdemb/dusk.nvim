local M = {}

function M.setup(c)
  local hl = vim.api.nvim_set_hl

  -- mini.statusline
  hl(0, "MiniStatuslineModeNormal", { fg = c.base, bg = c.blue, bold = true })
  hl(0, "MiniStatuslineModeInsert", { fg = c.base, bg = c.green, bold = true })
  hl(0, "MiniStatuslineModeVisual", { fg = c.base, bg = c.mauve, bold = true })
  hl(0, "MiniStatuslineModeReplace", { fg = c.base, bg = c.red, bold = true })
  hl(0, "MiniStatuslineModeCommand", { fg = c.base, bg = c.peach, bold = true })
  hl(0, "MiniStatuslineModeOther", { fg = c.base, bg = c.teal, bold = true })
  hl(0, "MiniStatuslineDevinfo", { fg = c.text, bg = c.surface1 })
  hl(0, "MiniStatuslineFilename", { fg = c.subtext0, bg = c.surface0 })
  hl(0, "MiniStatuslineFileinfo", { fg = c.text, bg = c.surface1 })
  hl(0, "MiniStatuslineInactive", { fg = c.subtext0, bg = c.mantle })

  -- mini.tabline
  hl(0, "MiniTablineCurrent", { fg = c.text, bg = c.surface1, bold = true })
  hl(0, "MiniTablineVisible", { fg = c.subtext0, bg = c.surface0 })
  hl(0, "MiniTablineHidden", { fg = c.subtext0, bg = c.mantle })
  hl(0, "MiniTablineModifiedCurrent", { fg = c.peach, bg = c.surface1, bold = true })
  hl(0, "MiniTablineModifiedVisible", { fg = c.peach, bg = c.surface0 })
  hl(0, "MiniTablineModifiedHidden", { fg = c.peach, bg = c.mantle })
  hl(0, "MiniTablineFill", { bg = c.mantle })
  hl(0, "MiniTablineTabpagesection", { fg = c.base, bg = c.pink, bold = true })

  -- mini.starter
  hl(0, "MiniStarterCurrent", { nocombine = true })
  hl(0, "MiniStarterFooter", { fg = c.subtext0, italic = true })
  hl(0, "MiniStarterHeader", { fg = c.pink, bold = true })
  hl(0, "MiniStarterInactive", { fg = c.overlay2 })
  hl(0, "MiniStarterItem", { fg = c.text })
  hl(0, "MiniStarterItemBullet", { fg = c.pink })
  hl(0, "MiniStarterItemPrefix", { fg = c.peach })
  hl(0, "MiniStarterSection", { fg = c.blue, bold = true })
  hl(0, "MiniStarterQuery", { fg = c.pink, bold = true })

  -- mini.cursorword
  hl(0, "MiniCursorword", { bg = "#332a30" })
  hl(0, "MiniCursorwordCurrent", { bg = "#332a30" })

  -- mini.indentscope
  hl(0, "MiniIndentscopeSymbol", { fg = c.pink })
  hl(0, "MiniIndentscopeSymbolOff", { fg = c.surface2 })

  -- mini.jump
  hl(0, "MiniJump", { fg = c.base, bg = c.pink, bold = true })
  hl(0, "MiniJump2dSpot", { fg = c.pink, bold = true, nocombine = true })
  hl(0, "MiniJump2dSpotAhead", { fg = c.teal, bg = c.surface0, nocombine = true })
  hl(0, "MiniJump2dSpotUnique", { fg = c.peach, bold = true, nocombine = true })
  hl(0, "MiniJump2dDim", { fg = c.overlay2 })

  -- mini.surround
  hl(0, "MiniSurround", { fg = c.base, bg = c.pink })

  -- mini.trailspace
  hl(0, "MiniTrailspace", { bg = c.red })

  -- mini.hipatterns
  hl(0, "MiniHipatternsFixme", { fg = c.base, bg = c.red, bold = true })
  hl(0, "MiniHipatternsHack", { fg = c.base, bg = c.peach, bold = true })
  hl(0, "MiniHipatternsTodo", { fg = c.base, bg = c.blue, bold = true })
  hl(0, "MiniHipatternsNote", { fg = c.base, bg = c.teal, bold = true })

  -- mini.pick
  hl(0, "MiniPickBorder", { fg = c.surface2, bg = c.surface0 })
  hl(0, "MiniPickBorderBusy", { fg = c.peach, bg = c.surface0 })
  hl(0, "MiniPickBorderText", { fg = c.pink, bg = c.surface0, bold = true })
  hl(0, "MiniPickIconDirectory", { fg = c.blue })
  hl(0, "MiniPickIconFile", { fg = c.text })
  hl(0, "MiniPickHeader", { fg = c.pink, bold = true })
  hl(0, "MiniPickMatchCurrent", { bg = c.surface2 })
  hl(0, "MiniPickMatchMarked", { bg = c.surface1 })
  hl(0, "MiniPickMatchRanges", { fg = c.pink, bold = true })
  hl(0, "MiniPickNormal", { fg = c.text, bg = c.surface0 })
  hl(0, "MiniPickPreviewLine", { bg = c.surface1 })
  hl(0, "MiniPickPreviewRegion", { bg = "#3d2d35" })
  hl(0, "MiniPickPrompt", { fg = c.pink, bg = c.surface0 })

  -- mini.files
  hl(0, "MiniFilesBorder", { fg = c.surface2, bg = c.surface0 })
  hl(0, "MiniFilesBorderModified", { fg = c.peach, bg = c.surface0 })
  hl(0, "MiniFilesCursorLine", { bg = c.surface2 })
  hl(0, "MiniFilesDirectory", { fg = c.blue })
  hl(0, "MiniFilesFile", { fg = c.text })
  hl(0, "MiniFilesNormal", { fg = c.text, bg = c.surface0 })
  hl(0, "MiniFilesTitle", { fg = c.pink, bg = c.surface0, bold = true })
  hl(0, "MiniFilesTitleFocused", { fg = c.base, bg = c.pink, bold = true })

  -- mini.clue
  hl(0, "MiniClueTitle", { fg = c.pink, bg = c.surface0, bold = true })
  hl(0, "MiniClueBorder", { fg = c.surface2, bg = c.surface0 })
  hl(0, "MiniClueGroup", { fg = c.blue })
  hl(0, "MiniClueNextKey", { fg = c.pink })
  hl(0, "MiniClueNextKeyWithPostkeys", { fg = c.peach })
  hl(0, "MiniClueSeparator", { fg = c.overlay2 })
  hl(0, "MiniClueDescSingle", { fg = c.text })
  hl(0, "MiniClueDescGroup", { fg = c.subtext0 })

  -- mini.diff
  hl(0, "MiniDiffSignAdd", { fg = c.green })
  hl(0, "MiniDiffSignChange", { fg = c.peach })
  hl(0, "MiniDiffSignDelete", { fg = c.red })
  hl(0, "MiniDiffOverAdd", { bg = "#2f3a2a" })
  hl(0, "MiniDiffOverChange", { bg = "#3a3328" })
  hl(0, "MiniDiffOverDelete", { bg = "#3a282c" })
  hl(0, "MiniDiffOverContext", { bg = c.surface1 })

  -- mini.notify
  hl(0, "MiniNotifyBorder", { fg = c.surface2, bg = c.surface0 })
  hl(0, "MiniNotifyNormal", { fg = c.text, bg = c.surface0 })
  hl(0, "MiniNotifyTitle", { fg = c.pink, bold = true })

  -- mini.icons
  hl(0, "MiniIconsAzure", { fg = c.sapphire })
  hl(0, "MiniIconsBlue", { fg = c.blue })
  hl(0, "MiniIconsCyan", { fg = c.teal })
  hl(0, "MiniIconsGreen", { fg = c.green })
  hl(0, "MiniIconsGrey", { fg = c.subtext0 })
  hl(0, "MiniIconsOrange", { fg = c.peach })
  hl(0, "MiniIconsPurple", { fg = c.mauve })
  hl(0, "MiniIconsRed", { fg = c.red })
  hl(0, "MiniIconsYellow", { fg = c.yellow })
end

return M

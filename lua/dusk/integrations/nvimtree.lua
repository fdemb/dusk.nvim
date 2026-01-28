local M = {}

function M.setup(c)
  local hl = vim.api.nvim_set_hl

  hl(0, "NvimTreeNormal", { fg = c.text, bg = c.mantle })
  hl(0, "NvimTreeNormalNC", { fg = c.text, bg = c.mantle })
  hl(0, "NvimTreeWinSeparator", { fg = c.mantle, bg = c.mantle })
  hl(0, "NvimTreeRootFolder", { fg = c.pink, bold = true })
  hl(0, "NvimTreeFolderName", { fg = c.blue })
  hl(0, "NvimTreeFolderIcon", { fg = c.blue })
  hl(0, "NvimTreeEmptyFolderName", { fg = c.blue })
  hl(0, "NvimTreeOpenedFolderName", { fg = c.blue })
  hl(0, "NvimTreeSymlinkFolderName", { fg = c.teal })
  hl(0, "NvimTreeExecFile", { fg = c.green, bold = true })
  hl(0, "NvimTreeOpenedFile", { fg = c.pink })
  hl(0, "NvimTreeModifiedFile", { fg = c.peach })
  hl(0, "NvimTreeSpecialFile", { fg = c.peach })
  hl(0, "NvimTreeImageFile", { fg = c.text })
  hl(0, "NvimTreeSymlink", { fg = c.teal })
  hl(0, "NvimTreeIndentMarker", { fg = c.surface2 })
  hl(0, "NvimTreeGitDirty", { fg = c.peach })
  hl(0, "NvimTreeGitNew", { fg = c.green })
  hl(0, "NvimTreeGitDeleted", { fg = c.red })
  hl(0, "NvimTreeGitMerge", { fg = c.peach })
  hl(0, "NvimTreeGitRenamed", { fg = c.teal })
  hl(0, "NvimTreeGitStaged", { fg = c.green })
  hl(0, "NvimTreeGitIgnored", { fg = c.overlay2 })
  hl(0, "NvimTreeFileIcon", { fg = c.text })
  hl(0, "NvimTreeWindowPicker", { fg = c.base, bg = c.pink, bold = true })
  hl(0, "NvimTreeCursorLine", { bg = c.surface1 })
  hl(0, "NvimTreeBookmark", { fg = c.pink })
  hl(0, "NvimTreeLiveFilterPrefix", { fg = c.pink, bold = true })
  hl(0, "NvimTreeLiveFilterValue", { fg = c.text })
end

return M

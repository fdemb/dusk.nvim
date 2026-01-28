local M = {}

function M.setup(c)
  local hl = vim.api.nvim_set_hl

  hl(0, "FidgetTitle", { fg = c.pink, bold = true })
  hl(0, "FidgetTask", { fg = c.subtext0 })
  hl(0, "FidgetNormal", { fg = c.text, bg = c.surface0 })
end

return M

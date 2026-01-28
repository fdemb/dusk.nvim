local c = require("dusk").colors

return {
  normal = {
    a = { bg = c.blue, fg = c.base, gui = "bold" },
    b = { bg = c.surface1, fg = c.text },
    c = { bg = c.mantle, fg = c.subtext0 },
  },
  insert = {
    a = { bg = c.green, fg = c.base, gui = "bold" },
    b = { bg = c.surface1, fg = c.text },
    c = { bg = c.mantle, fg = c.subtext0 },
  },
  visual = {
    a = { bg = c.mauve, fg = c.base, gui = "bold" },
    b = { bg = c.surface1, fg = c.text },
    c = { bg = c.mantle, fg = c.subtext0 },
  },
  replace = {
    a = { bg = c.red, fg = c.base, gui = "bold" },
    b = { bg = c.surface1, fg = c.text },
    c = { bg = c.mantle, fg = c.subtext0 },
  },
  command = {
    a = { bg = c.peach, fg = c.base, gui = "bold" },
    b = { bg = c.surface1, fg = c.text },
    c = { bg = c.mantle, fg = c.subtext0 },
  },
  terminal = {
    a = { bg = c.teal, fg = c.base, gui = "bold" },
    b = { bg = c.surface1, fg = c.text },
    c = { bg = c.mantle, fg = c.subtext0 },
  },
  inactive = {
    a = { bg = c.mantle, fg = c.subtext0 },
    b = { bg = c.mantle, fg = c.overlay2 },
    c = { bg = c.mantle, fg = c.overlay2 },
  },
}

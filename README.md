# 🌆 Dusk

A soft, muted dark theme for Neovim with pink accents.

## Installation

Using [lazy.nvim](https://github.com/folke/lazy.nvim):

```lua
{
  "fdemb/dusk.nvim",
  lazy = false,
  priority = 1000,
  opts = {},
}
```

Using [mini.deps](https://nvim-mini.org/mini.nvim/readmes/mini-deps):

```lua
MiniDeps.add({
  source = 'fdemb/dusk.nvim',
})
```

## Default configuration

```lua
require("dusk").setup({
  transparent_background = false,
  term_colors = true,
  dim_inactive = false,
  styles = {
    comments = { "italic" },
    conditionals = {},
    loops = {},
    functions = {},
    keywords = {},
    strings = {},
    variables = {},
    numbers = {},
    booleans = {},
    properties = {},
    types = {},
    operators = {},
  },
  integrations = {
    cmp = true,
    gitsigns = true,
    nvimtree = true,
    neotree = true,
    telescope = true,
    treesitter = true,
    mini = true,
    native_lsp = {
      enabled = true,
      underlines = {
        errors = { "undercurl" },
        hints = { "undercurl" },
        warnings = { "undercurl" },
        information = { "undercurl" },
      },
    },
    indent_blankline = { enabled = true },
    mason = true,
    noice = true,
    notify = true,
    which_key = true,
    fidget = true,
    flash = true,
    blink_cmp = true,
    snacks = true,
  },
})

vim.cmd.colorscheme("dusk")
```

## Supported Plugins

- [blink.cmp](https://github.com/Saghen/blink.cmp)
- [fidget.nvim](https://github.com/j-hui/fidget.nvim)
- [flash.nvim](https://github.com/folke/flash.nvim)
- [gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim)
- [indent-blankline.nvim](https://github.com/lukas-reineke/indent-blankline.nvim)
- [mason.nvim](https://github.com/williamboman/mason.nvim)
- [mini.nvim](https://github.com/echasnovski/mini.nvim)
- [neo-tree.nvim](https://github.com/nvim-neo-tree/neo-tree.nvim)
- [noice.nvim](https://github.com/folke/noice.nvim)
- [nvim-cmp](https://github.com/hrsh7th/nvim-cmp)
- [nvim-notify](https://github.com/rcarriga/nvim-notify)
- [nvim-tree.lua](https://github.com/nvim-tree/nvim-tree.lua)
- [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
- [snacks.nvim](https://github.com/folke/snacks.nvim)
- [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)
- [which-key.nvim](https://github.com/folke/which-key.nvim)

## Color Palette

| Name     | Hex       | Preview                                                     |
| -------- | --------- | ----------------------------------------------------------- |
| base     | `#1e1e1e` | ![#1e1e1e](https://singlecolorimage.com/get/1e1e1e/20x20)   |
| mantle   | `#1a1a1a` | ![#1a1a1a](https://singlecolorimage.com/get/1a1a1a/20x20)   |
| surface0 | `#242424` | ![#242424](https://singlecolorimage.com/get/242424/20x20)   |
| surface1 | `#2b2b2b` | ![#2b2b2b](https://singlecolorimage.com/get/2b2b2b/20x20)   |
| surface2 | `#333333` | ![#333333](https://singlecolorimage.com/get/333333/20x20)   |
| text     | `#d4d4d4` | ![#d4d4d4](https://singlecolorimage.com/get/d4d4d4/20x20)   |
| pink     | `#e8a0bf` | ![#e8a0bf](https://singlecolorimage.com/get/e8a0bf/20x20)   |
| mauve    | `#c49ae8` | ![#c49ae8](https://singlecolorimage.com/get/c49ae8/20x20)   |
| red      | `#e86a7a` | ![#e86a7a](https://singlecolorimage.com/get/e86a7a/20x20)   |
| peach    | `#dbb074` | ![#dbb074](https://singlecolorimage.com/get/dbb074/20x20)   |
| green    | `#a3c985` | ![#a3c985](https://singlecolorimage.com/get/a3c985/20x20)   |
| teal     | `#7dcac4` | ![#7dcac4](https://singlecolorimage.com/get/7dcac4/20x20)   |
| blue     | `#7eb8da` | ![#7eb8da](https://singlecolorimage.com/get/7eb8da/20x20)   |

## Credits

- Structure inspired by [catppuccin/nvim](https://github.com/catppuccin/nvim)

## License

MIT

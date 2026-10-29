# slime.nvim

A Neovim port of [smlombardi's Slime theme for VS Code](https://github.com/smlombardi/theme-slime).
Colors are copied verbatim from the VS Code theme and mapped to the treesitter, LSP and UI groups that correspond to
each TextMate scope and workbench color.

## Install

With [lazy.nvim](https://github.com/folke/lazy.nvim):

```lua
{
  "gardgeoff/slime.nvim",
  lazy = false,
  priority = 1000,
  opts = {},
  config = function(_, opts)
    require("slime").setup(opts)
    vim.cmd.colorscheme("slime")
  end,
}
```

`setup()` only stores options; `:colorscheme slime` applies them.

## Options

```lua
require("slime").setup({
  transparent = false,       -- no background on Normal, sidebars and floats
  terminal_colors = true,    -- set vim.g.terminal_color_0..15
  styles = {                 -- merged into the matching groups
    comments = { italic = true },
    keywords = {},
    functions = {},
    variables = {},
    parameters = { italic = true },
  },
  plugins = {
    auto = true,             -- with lazy.nvim, skip integrations for plugins that aren't installed
    -- telescope = false,    -- turn off any integration by name
  },
  on_colors = function(colors) end,           -- change palette values before groups are built
  on_highlights = function(highlights, colors) end, -- change or add groups
})
```

For example:

```lua
on_highlights = function(hl, c)
  hl.CursorLineNr = { fg = c.cursor, bold = true }
end
```

The resolved palette is available as `require("slime").colors()`.

## Plugins

bufferline, dashboard-nvim, flash.nvim, FTerm.nvim, gitsigns.nvim, hop.nvim, indent-blankline.nvim, lazy.nvim,
leap.nvim, markview.nvim, mason.nvim, neo-tree.nvim, nvim-cmp (and lspkind), nvim-window-picker,
rainbow-delimiters.nvim, telescope.nvim, toggleterm.nvim, vim-floaterm, vim-fugitive, vim-illuminate.

nvim-scrollbar uses the core diagnostic, search, git and popup scrollbar groups.

A lualine theme is included: `theme = "slime"`.

## Development

```sh
nvim --headless -u NONE --cmd "set rtp+=." -l scripts/check.lua path/to/slime-color-theme.json
```

Checks every highlight group for valid colors and links. Given the VS Code theme JSON, it also checks every palette
value tagged `vscode:` or `scope:` in `lua/slime/palette.lua` against it.

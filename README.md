# gruber-darker.nvim

A Neovim port of the _gruber-darker_ theme by Tsoding, originally written for Emacs.

## Overview

This colorscheme is explicitly tailored to my personal Neovim setup. It defines highlight groups primarily for Treesitter and a small set of plugins that I use, rather than aiming for broad or complete coverage.

Because of this, many UI elements or plugins may appear unstyled unless extended.

## Requirements

- Neovim
- nvim-treesitter

## Installation

Use any plugin manager (e.g. Lazy, Packer):

```lua
-- lazy.nvim
{
  "thesignumt/gruber-darker.nvim",
  priority = 1000,
  dependencies = { "nvim-treesitter/nvim-treesitter" },
  config = function()
    vim.cmd.colorscheme("gruber-darker")
  end,
}
```

## Notes

- No terminal (ANSI) colors are defined
- Designed around a specific personal configuration
- Focused mainly on Treesitter highlight groups
- Additional plugin support may need to be added manually
- Users are free to fork and adapt this colorscheme to their own setup

## License

MIT

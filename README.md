<h1 align="center">Winterfell</h1>
<br />
<div align="center">
  <img
    width="144px"
    height="144px"
    src="https://raw.githubusercontent.com/jadnw/winterfell.nvim/main/media/logo.svg"
    alt="winterfell logo"
  />
</div>
<br />
<p align="center">
  <a href="https://github.com/jadnw/winterfell.nvim/stargazers"><img src="https://img.shields.io/github/stars/jadnw/winterfell.nvim?colorA=1b2125&colorB=73aace&style=for-the-badge"></a>
  <a href="https://github.com/jadnw/winterfell.nvim/issues"><img src="https://img.shields.io/github/issues/jadnw/winterfell.nvim?colorA=1b2125&colorB=f08789&style=for-the-badge"></a>
  <a href="https://github.com/jadnw/winterfell.nvim/contributors"><img src="https://img.shields.io/github/contributors/jadnw/winterfell.nvim?colorA=1b2125&colorB=83c1ae&style=for-the-badge"></a>
  <a href="https://github.com/jadnw/winterfell.nvim/network/members"><img src="https://img.shields.io/github/forks/jadnw/winterfell.nvim?colorA=1b2125&colorB=b3a8f9&style=for-the-badge"></a>
</p>

<p align="center">
  A customizable dark colorscheme for NeoVim 0.5+ with LSP, TreeSitter and a variety of plugins support.
</p>

## Table of contents

- [Overview](#overview)
- [Requirements](#requirements)
- [Palette & Gems](#palette-gems)
- [Installation](#Installation)
- [Setup](#setup)
- [Supported Plugins](#supported-plugins)
- [References](#references)

## Overview

<div align="center">
  <img 
    src="https://raw.githubusercontent.com/jadnw/winterfell.nvim/main/media/screenshot.png"
    alt="Default Screenshot"
  />
</div>

## Requirements

- Neovim >= 0.5.0

## Palette & Gems

Winterfell saves your eyestraints with a dark background and a pastel palette.

<div align="center">
  <img 
    src="https://raw.githubusercontent.com/jadnw/winterfell.nvim/main/media/palette.svg"
    alt="Winterfell Palette"
  />
</div>

### Available Gems

The accent color (foreground color of NvimTree directory, Dashboard header, ...)
will change when you change the gem in [setup function](#setup)

|Gem                |Accent Color   |
|-------------------|---------------|
|Emerald (default)  |Green          |
|Amber              |Orange         |
|Apatite            |Teal           |
|Crystal            |White          |
|Diamond            |Cyan           |
|Kunzite            |Magenta        |
|Obsidian           |Purple         |
|Ruby               |Red            |
|Sapphire           |Blue           |
|Topaz              |Yellow         |

## Installation

You can install Winterfell via your favorite plugin manager:

- Vim-Plug
```vim
Plug "jadnw/winterfell.nvim"
```

- Packer
```lua
use { "jadnw/winterfell.nvim" }
```

For a complete guide, see ```:h winterfell.nvim```

## Setup

Place the following code somewhere in your nvim config (after loading plugins)

```lua
require("winterfell").setup {}
-- Run command after the setup function
vim.cmd("colorscheme winterfell")
```

### Default options

This is an example Winterfell setup with default values

```lua
require("winterfell").setup {
  gem = "emerald", -- values: "emerald" | "amber" | "apatite" | "crystal" | "diamond"| "kunzite" | "obsidian" | "ruby" | "sapphire" | "topaz"
  style = "default", -- values: "default" | "soft" | "hard" 
  options = {
    transparent = false, -- if true, background is transparent
    terminal_colors = true, -- if true, set terminal colors
    -- set style: "NONE", "italic", "bold", "underline", "undercurl"
    styles = {
      comments = "NONE",
      functions = "NONE",
      keywords = "NONE",
      numbers = "NONE",
      strings = "NONE",
      types = "NONE",
      variables = "NONE",
    },
    -- set invert colors
    inverse = {
      match_paren = false,
      visual = false,
      search = false,
    },
    -- enable plugin highlightings
    plugins = {
      bufferline = true,
      cmp = true,
      dashboard = true,
      diagnostic = {
        enable = true,
        background = true,
      },
      gitsigns = true,
      illuminate = true,
      lspsaga = true,
      lsp_signature = true,
      notify = true,
      nvimtree = true,
      telescope = true,
      treesitter = true,
      trouble = true,
      tsrainbow = true,
      whichkey = true,
    },
  }
}
```

## Supported Plugins

- [bufferline.nvim](https://github.com/akinsho/bufferline.nvim)
- [dashboard-nvim](https://github.com/glepnir/dashboard-nvim)
- [gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim)
- [vim-illuminate](https://github.com/RRethy/vim-illuminate)
- [lualine.nvim](https://github.com/nvim-lualine/lualine.nvim)
- [lspsaga.nvim](https://github.com/glepnir/lspsaga.nvim)
- [lsp_signature.nvim](https://github.com/ray-x/lsp_signature)
- [nvim-cmp](https://github.com/hrsh7th/nvim-cmp)
- [nvim-notify](https://github.com/rcarriga/nvim-notify)
- [nvim-tree.lua](https://github.com/kyazdani42/nvim-tree.lua)
- [nvim-ts-rainbow](https://github.com/p00f/nvim-ts-rainbow)
- [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)
- [trouble.nvim](https://github.com/folke/trouble.nvim)
- [which-key.nvim](https://github.com/folke/which-key.nvim)

## References

- [EdenEast/nightfox.nvim](https://github.com/EdenEast/nightfox.nvim)
- [folke/tokyonight.nvim](https://github.com/folke/tokyonight.nvim)

local M = {}

M.gems = {
  amber = "orange",
  apatite = "teal",
  crystal = "white",
  diamond = "cyan",
  emerald = "green",
  kunzite = "magenta",
  obsidian = "purple",
  ruby = "red",
  sapphire = "blue",
  topaz = "yellow",
}

M.styles = {
  "default",
  "soft",
  "hard",
}

function M.load_spec(gem, style)
  gem = vim.tbl_contains(vim.tbl_keys(M.gems), gem) and gem or "emerald"
  style = vim.tbl_contains(M.styles, style) and style or "default"
  local colors = require("winterfell.colors")
  return colors.gen_spec(M.gems[gem], colors.pal[style])
end

return M

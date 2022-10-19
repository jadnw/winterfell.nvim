local palette = require("winterfell.palette")
local group = require("winterfell.group")
local highlight = require("winterfell.lib.highlight")

local M = {}

function M.colorscheme()
  local config = require("winterfell.config")
  local spec = palette.load_spec(config.accent, config.style)
  local hls = group.get_highlights(spec, config)
  highlight.hl(hls)

  if config.options.terminal_colors then
    highlight.set_terminal_colors(spec)
  end
end

function M.setup(user_conf)
  local config = require("winterfell.config")
  config.set(user_conf)
end

return M

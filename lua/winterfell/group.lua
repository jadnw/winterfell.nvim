local M = {}

function M.get_highlights(spec, config)
  local conf = config.options
  local editor = require("winterfell.group.editor").get(spec, conf)
  local syntax = require("winterfell.group.syntax").get(spec, conf)

  local highlights = vim.tbl_deep_extend("force", editor, syntax)

  for plug, opts in pairs(conf.plugins or {}) do
    if type(opts) == "table" then
      if opts.enable then
        highlights = vim.tbl_deep_extend(
          "force",
          highlights,
          require("winterfell.group.plugins." .. plug).get(spec, conf, opts)
        )
      end
    else
      if opts then
        highlights = vim.tbl_deep_extend(
          "force",
          highlights,
          require("winterfell.group.plugins." .. plug).get(spec, conf, {})
        )
      end
    end
  end
  return highlights
end

return M

local M = {
  accent = "green",
  style = "default",
}

M.options = {
  transparent = false,
  terminal_colors = true,
  styles = {
    comments = "NONE",
    functions = "NONE",
    keywords = "NONE",
    numbers = "NONE",
    strings = "NONE",
    types = "NONE",
    variables = "NONE",
  },
  inverse = {
    match_paren = false,
    visual = false,
    search = false,
  },
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
    tsrainbow = true,
    whichkey = true,
  },
}

function M.set(user_conf)
  user_conf = user_conf or {}
  M.accent = user_conf.accent or M.accent
  M.style = user_conf.style or M.style
  M.options = vim.tbl_deep_extend("keep", user_conf.options or {}, M.options)
end

return M

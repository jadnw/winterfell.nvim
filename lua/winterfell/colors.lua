local Color = require("winterfell.lib.color")

local M = {}

local C = Color:new({
  bg = "#192329",
  fg = "#9ab3c1",
  factor = 0.25,
})

M.pal = {
  default = {
    black = C:shade("#3f5867"),
    red = C:shade("#df6265"),
    green = C:shade("#8ed084"),
    blue = C:shade("#62a5fd"),
    yellow = C:shade("#d9c57a"),
    orange = C:shade("#ec9772"),
    cyan = C:shade("#60b8d8"),
    teal = C:shade("#46c39d"),
    magenta = C:shade("#f474bc"),
    purple = C:shade("#a47efd"),
    white = C:shade("#b0c4ce"),
    comment = "#466272",
    bg0 = "#11171b",
    bg1 = "#192329",
    bg2 = "#1f2c34",
    bg3 = "#2d3f4a",
    bg4 = "#334855",
    fg0 = "#b0c4ce",
    fg1 = "#9ab3c1",
    fg2 = "#83a2b3",
    fg3 = "#6d91a5",
    sel0 = "#5a7f94",
    sel1 = "#216852",
    lualine_bg = "#0f1518",
  },
  soft = {
    black = C:shade("#3f5867"),
    red = C:shade("#df6265"),
    green = C:shade("#8ed084"),
    blue = C:shade("#62a5fd"),
    yellow = C:shade("#d9c57a"),
    orange = C:shade("#ec9772"),
    cyan = C:shade("#60b8d8"),
    teal = C:shade("#46c39d"),
    magenta = C:shade("#f474bc"),
    purple = C:shade("#a47efd"),
    white = C:shade("#b0c4ce"),
    comment = "#466272",
    bg0 = "#131a1f",
    bg1 = "#1c272e",
    bg2 = "#223038",
    bg3 = "#2f424e",
    bg4 = "#364b59",
    fg0 = "#b0c4ce",
    fg1 = "#9ab3c1",
    fg2 = "#83a2b3",
    fg3 = "#6d91a5",
    sel0 = "#5a7f94",
    sel1 = "#216852",
    lualine_bg = "#0e1417",
  },
  hard = {
    black = C:shade("#3f5867"),
    red = C:shade("#df6265"),
    green = C:shade("#8ed084"),
    blue = C:shade("#62a5fd"),
    yellow = C:shade("#d9c57a"),
    orange = C:shade("#ec9772"),
    cyan = C:shade("#60b8d8"),
    teal = C:shade("#46c39d"),
    magenta = C:shade("#f474bc"),
    purple = C:shade("#a47efd"),
    white = C:shade("#b0c4ce"),
    comment = "#466272",
    bg0 = "#10171b",
    bg1 = "#161f24",
    bg2 = "#1c282f",
    bg3 = "#2a3b45",
    bg4 = "#314550",
    fg0 = "#b0c4ce",
    fg1 = "#9ab3c1",
    fg2 = "#83a2b3",
    fg3 = "#6d91a5",
    sel0 = "#5a7f94",
    sel1 = "#216852",
    lualine_bg = "#0e1518",
  },
}

--- Generate spec
-- @param accent string
-- @param pal table
function M.gen_spec(accent, pal)
  local spec = {
    bg0 = pal.bg0, -- Dark bg (status line and float)
    bg1 = pal.bg1, -- Default bg
    bg2 = pal.bg2, -- Lighter bg (colorcolm folds)
    bg3 = pal.bg3, -- Lighter bg (cursor line)
    bg4 = pal.bg4, -- Conceal, border fg

    fg0 = pal.fg0, -- Lighter fg
    fg1 = pal.fg1, -- Default fg
    fg2 = pal.fg2, -- Darker fg (status line)
    fg3 = pal.fg3, -- Darker fg (line numbers, fold colums)

    sel0 = pal.sel0, -- Popup bg, visual selection bg
    sel1 = pal.sel1, -- Popup sel bg, search bg
    lualine_bg = pal.lualine_bg, -- Lualine bg
  }

  spec.pal = {
    accent = pal[accent],
    black = pal.black,
    red = pal.red,
    green = pal.green,
    blue = pal.blue,
    yellow = pal.yellow,
    orange = pal.orange,
    cyan = pal.cyan,
    teal = pal.teal,
    magenta = pal.magenta,
    purple = pal.purple,
    white = pal.white,
  }

  spec.syntax = {
    attr = pal.yellow.base, -- HTML tag attribues
    bool = pal.orange.base, -- Boolean
    bracket = spec.fg2, -- Brackets and Punctuation
    builtin0 = pal.magenta.base, -- Builtin variable
    builtin1 = pal.yellow.base, -- Builtin type
    builtin2 = pal.orange.base, -- Builtin const
    builtin3 = pal.red.bright, -- Not used
    comment = pal.comment, -- Comment
    conditional = pal.magenta.base, -- Conditional and loop
    const = pal.orange.bright, -- Constants, imports and booleans
    constructor = pal.orange.base, -- Constructor, JSX elements
    dep = spec.fg3, -- Deprecated
    field = pal.teal.base, -- Field, Property
    func = pal.blue.base, -- Functions and Titles
    ident = pal.magenta.bright, -- Identifiers
    keyword = pal.purple.base, -- Keywords
    number = pal.orange.bright, -- Numbers
    operator = pal.purple.bright, -- Operators
    param = pal.red.bright, -- Params
    preproc = pal.magenta.base, -- PreProc
    regex = pal.orange.base, -- Regex
    statement = pal.purple.base, -- Statements
    string = pal.green.base, -- Strings
    tag_delimiter = pal.teal.base, -- Tag delimiter
    type = pal.yellow.base, -- Types
    variable = spec.fg1, -- Variables
  }

  spec.diag = {
    error = pal.red.base,
    warn = pal.yellow.base,
    info = pal.cyan.base,
    hint = pal.green.base,
  }

  spec.diff = {
    add = pal.green.dim,
    delete = pal.red.dim,
    change = pal.yellow.dim,
    text = pal.cyan.dim,
  }

  spec.git = {
    add = pal.cyan.base,
    removed = pal.red.base,
    changed = pal.yellow.base,
    conflict = pal.orange.base,
    ignored = pal.comment,
  }

  return spec
end

return M

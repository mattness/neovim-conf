-- Lualine theme for Inksea
local colors = {
  bg = "#1a1d21",
  bg_dark = "#131518",
  bg_highlight = "#31353a",
  fg = "#c4cad1",
  fg_dim = "#676B79",

  blue = "#6FC1FF",
  cyan = "#45A9F9",
  green = "#63e6be",
  yellow = "#F6B352",
  orange = "#FFCC95",
  red = "#ef5285",
  magenta = "#FF9AC1",
  purple = "#B084EB",
}

return {
  normal = {
    a = { fg = colors.bg, bg = colors.blue, gui = "bold" },
    b = { fg = colors.fg, bg = colors.bg_highlight },
    c = { fg = colors.fg, bg = colors.bg_dark },
  },
  insert = {
    a = { fg = colors.bg, bg = colors.green, gui = "bold" },
    b = { fg = colors.fg, bg = colors.bg_highlight },
    c = { fg = colors.fg, bg = colors.bg_dark },
  },
  visual = {
    a = { fg = colors.bg, bg = colors.magenta, gui = "bold" },
    b = { fg = colors.fg, bg = colors.bg_highlight },
    c = { fg = colors.fg, bg = colors.bg_dark },
  },
  replace = {
    a = { fg = colors.bg, bg = colors.red, gui = "bold" },
    b = { fg = colors.fg, bg = colors.bg_highlight },
    c = { fg = colors.fg, bg = colors.bg_dark },
  },
  command = {
    a = { fg = colors.bg, bg = colors.yellow, gui = "bold" },
    b = { fg = colors.fg, bg = colors.bg_highlight },
    c = { fg = colors.fg, bg = colors.bg_dark },
  },
  inactive = {
    a = { fg = colors.fg_dim, bg = colors.bg_dark },
    b = { fg = colors.fg_dim, bg = colors.bg_dark },
    c = { fg = colors.fg_dim, bg = colors.bg_dark },
  },
}

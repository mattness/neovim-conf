-- Inksea Dark colorscheme for Neovim
vim.cmd("hi clear")
if vim.fn.exists("syntax_on") then
  vim.cmd("syntax reset")
end

vim.o.termguicolors = true
vim.g.colors_name = "inksea"

-- Inksea Dark Palette
local colors = require("config.colors")

-- Helper function to set highlights
local function hl(group, opts)
  vim.api.nvim_set_hl(0, group, opts)
end

-- Editor UI
hl("Normal", { fg = colors.fg, bg = colors.bg })
hl("NormalFloat", { fg = colors.fg, bg = colors.bg_dark })
hl("FloatBorder", { fg = colors.border, bg = colors.bg_dark })
hl("ColorColumn", { bg = colors.bg_highlight })
hl("Cursor", { fg = colors.bg, bg = colors.fg })
hl("CursorLine", { bg = colors.bg_highlight })
hl("CursorLineNr", { fg = colors.orange, bold = true })
hl("LineNr", { fg = colors.fg_dim })
hl("SignColumn", { bg = colors.bg })
hl("StatusLine", { fg = colors.fg, bg = colors.bg })
hl("StatusLineNC", { fg = colors.fg_dim, bg = colors.bg })
hl("VertSplit", { fg = colors.border })
hl("WinSeparator", { fg = colors.border })
hl("Pmenu", { fg = colors.fg, bg = colors.bg_dark })
hl("PmenuSel", { bg = colors.bg_highlight })
hl("Visual", { bg = colors.selection })
hl("Search", { bg = colors.search })
hl("IncSearch", { bg = colors.orange, fg = colors.bg })

-- Syntax
hl("Comment", { fg = colors.comment, italic = true })
hl("Constant", { fg = colors.orange })
hl("String", { fg = colors.green })
hl("Character", { fg = colors.green })
hl("Number", { fg = colors.orange })
hl("Boolean", { fg = colors.orange })
hl("Float", { fg = colors.orange })
hl("Identifier", { fg = colors.magenta })
hl("Function", { fg = colors.blue })
hl("Statement", { fg = colors.magenta })
hl("Conditional", { fg = colors.magenta })
hl("Repeat", { fg = colors.magenta })
hl("Label", { fg = colors.magenta })
hl("Operator", { fg = colors.cyan })
hl("Keyword", { fg = colors.magenta, italic = true })
hl("Exception", { fg = colors.magenta })
hl("PreProc", { fg = colors.cyan })
hl("Include", { fg = colors.magenta })
hl("Define", { fg = colors.magenta })
hl("Macro", { fg = colors.cyan })
hl("Type", { fg = colors.cyan })
hl("StorageClass", { fg = colors.magenta })
hl("Structure", { fg = colors.cyan })
hl("Special", { fg = colors.blue })
hl("SpecialChar", { fg = colors.orange })
hl("Tag", { fg = colors.magenta })
hl("Delimiter", { fg = colors.fg })
hl("SpecialComment", { fg = colors.comment })
hl("Debug", { fg = colors.orange })
hl("Underlined", { underline = true })
hl("Error", { fg = colors.red })
hl("Todo", { fg = colors.yellow, bold = true })

-- Treesitter
hl("@variable", { fg = colors.fg })
hl("@variable.builtin", { fg = colors.purple })
hl("@variable.parameter", { fg = colors.yellow })
hl("@variable.member", { fg = colors.fg })
hl("@constant", { fg = colors.orange })
hl("@constant.builtin", { fg = colors.orange })
hl("@module", { fg = colors.cyan })
hl("@string", { fg = colors.green })
hl("@string.escape", { fg = colors.magenta })
hl("@character", { fg = colors.green })
hl("@number", { fg = colors.orange })
hl("@boolean", { fg = colors.orange })
hl("@float", { fg = colors.orange })
hl("@function", { fg = colors.blue })
hl("@function.builtin", { fg = colors.blue })
hl("@function.method", { fg = colors.blue })
hl("@constructor", { fg = colors.cyan })
hl("@keyword", { fg = colors.magenta, italic = true })
hl("@keyword.function", { fg = colors.magenta, italic = true })
hl("@keyword.return", { fg = colors.magenta })
hl("@keyword.operator", { fg = colors.magenta })
hl("@operator", { fg = colors.cyan })
hl("@punctuation.bracket", { fg = colors.fg })
hl("@punctuation.delimiter", { fg = colors.fg })
hl("@type", { fg = colors.cyan })
hl("@type.builtin", { fg = colors.cyan })
hl("@property", { fg = colors.fg })
hl("@tag", { fg = colors.magenta })
hl("@tag.attribute", { fg = colors.green })
hl("@tag.delimiter", { fg = colors.fg })
hl("@comment", { fg = colors.comment, italic = true })

-- LSP
hl("DiagnosticError", { fg = colors.red })
hl("DiagnosticWarn", { fg = colors.yellow })
hl("DiagnosticInfo", { fg = colors.blue })
hl("DiagnosticHint", { fg = colors.green })
hl("DiagnosticUnderlineError", { undercurl = true, sp = colors.red })
hl("DiagnosticUnderlineWarn", { undercurl = true, sp = colors.yellow })
hl("DiagnosticUnderlineInfo", { undercurl = true, sp = colors.blue })
hl("DiagnosticUnderlineHint", { undercurl = true, sp = colors.green })
hl("LspReferenceText", { bg = colors.bg_highlight })
hl("LspReferenceRead", { bg = colors.bg_highlight })
hl("LspReferenceWrite", { bg = colors.bg_highlight })

-- Git signs
hl("GitSignsAdd", { fg = colors.git_add })
hl("GitSignsChange", { fg = colors.git_change })
hl("GitSignsDelete", { fg = colors.git_delete })

-- Diff (using blended colors without alpha)
hl("DiffAdd", { bg = "#1d2e28" })
hl("DiffChange", { bg = "#1d2a34" })
hl("DiffDelete", { bg = "#2e1d24" })
hl("DiffText", { bg = "#253642" })

-- Telescope
hl("TelescopeNormal", { fg = colors.fg, bg = colors.bg_dark })
hl("TelescopeBorder", { fg = colors.border, bg = colors.bg_dark })
hl("TelescopePromptNormal", { fg = colors.fg, bg = colors.bg_dark })
hl("TelescopePromptBorder", { fg = colors.border, bg = colors.bg_dark })
hl("TelescopePromptTitle", { fg = colors.orange, bg = colors.bg_dark })
hl("TelescopePreviewTitle", { fg = colors.green, bg = colors.bg_dark })
hl("TelescopeResultsTitle", { fg = colors.blue, bg = colors.bg_dark })
hl("TelescopeSelection", { bg = colors.bg_highlight })
hl("TelescopeMatching", { fg = colors.blue, bold = true })

-- Neo-tree
hl("NeoTreeNormal", { fg = colors.fg, bg = colors.bg_dark })
hl("NeoTreeNormalNC", { fg = colors.fg, bg = colors.bg_dark })
hl("NeoTreeDirectoryIcon", { fg = colors.blue })
hl("NeoTreeDirectoryName", { fg = colors.blue })
hl("NeoTreeFileName", { fg = colors.fg })
hl("NeoTreeGitAdded", { fg = colors.git_add })
hl("NeoTreeGitModified", { fg = colors.git_change })
hl("NeoTreeGitDeleted", { fg = colors.git_delete })

-- nvim-cmp
hl("CmpItemAbbrMatch", { fg = colors.blue, bold = true })
hl("CmpItemAbbrMatchFuzzy", { fg = colors.blue, bold = true })
hl("CmpItemKindFunction", { fg = colors.blue })
hl("CmpItemKindMethod", { fg = colors.blue })
hl("CmpItemKindVariable", { fg = colors.magenta })
hl("CmpItemKindKeyword", { fg = colors.magenta })
hl("CmpItemKindText", { fg = colors.fg })
hl("CmpItemKindModule", { fg = colors.cyan })
hl("CmpItemKindClass", { fg = colors.cyan })
hl("CmpItemKindInterface", { fg = colors.cyan })
hl("CmpItemKindStruct", { fg = colors.cyan })
hl("CmpItemKindProperty", { fg = colors.fg })
hl("CmpItemKindField", { fg = colors.fg })
hl("CmpItemKindEnum", { fg = colors.cyan })
hl("CmpItemKindConstant", { fg = colors.orange })
hl("CmpItemKindSnippet", { fg = colors.green })

-- Which-key
hl("WhichKey", { fg = colors.blue })
hl("WhichKeyGroup", { fg = colors.magenta })
hl("WhichKeyDesc", { fg = colors.fg })
hl("WhichKeySeparator", { fg = colors.comment })
hl("WhichKeyFloat", { bg = colors.bg_dark })

-- Noice
hl("NoicePopup", { fg = colors.fg, bg = colors.bg_dark })
hl("NoicePopupBorder", { fg = colors.border, bg = colors.bg_dark })
hl("NoiceCmdlinePopup", { fg = colors.fg, bg = colors.bg_dark })
hl("NoiceCmdlinePopupBorder", { fg = colors.yellow, bg = colors.bg_dark })
hl("NoiceCmdlinePopupTitle", { fg = colors.yellow, bg = colors.bg_dark })
hl("NoiceCmdlineIcon", { fg = colors.yellow })
hl("NoiceCmdline", { fg = colors.fg, bg = colors.bg_dark })

-- Notify
hl("NotifyERRORBorder", { fg = colors.red })
hl("NotifyWARNBorder", { fg = colors.yellow })
hl("NotifyINFOBorder", { fg = colors.blue })
hl("NotifyDEBUGBorder", { fg = colors.comment })
hl("NotifyTRACEBorder", { fg = colors.purple })
hl("NotifyERRORTitle", { fg = colors.red })
hl("NotifyWARNTitle", { fg = colors.yellow })
hl("NotifyINFOTitle", { fg = colors.blue })
hl("NotifyDEBUGTitle", { fg = colors.comment })
hl("NotifyTRACETitle", { fg = colors.purple })

-- Dashboard
hl("DashboardHeader", { fg = colors.blue })
hl("DashboardCenter", { fg = colors.magenta })
hl("DashboardShortcut", { fg = colors.orange })
hl("DashboardFooter", { fg = colors.green, italic = true })

-- Lazy.nvim
hl("LazyButton", { bg = colors.bg_highlight })
hl("LazyButtonActive", { bg = colors.selection })
hl("LazyH1", { fg = colors.blue, bold = true })
hl("LazyH2", { fg = colors.magenta, bold = true })
hl("LazySpecial", { fg = colors.orange })
hl("LazyCommit", { fg = colors.green })
hl("LazyReasonPlugin", { fg = colors.magenta })
hl("LazyReasonRuntime", { fg = colors.blue })

-- Snacks
hl("SnacksIndent", { fg = colors.fg_dim })
hl("SnacksIndentScope", { fg = colors.blue })

-- Terminal
vim.g.terminal_color_0 = "#212529"
vim.g.terminal_color_1 = colors.red
vim.g.terminal_color_2 = colors.green
vim.g.terminal_color_3 = colors.yellow
vim.g.terminal_color_4 = colors.blue
vim.g.terminal_color_5 = colors.magenta
vim.g.terminal_color_6 = colors.cyan
vim.g.terminal_color_7 = colors.fg
vim.g.terminal_color_8 = colors.fg_dim
vim.g.terminal_color_9 = colors.red
vim.g.terminal_color_10 = colors.green
vim.g.terminal_color_11 = colors.orange
vim.g.terminal_color_12 = colors.blue
vim.g.terminal_color_13 = colors.magenta
vim.g.terminal_color_14 = colors.cyan
vim.g.terminal_color_15 = colors.fg

return {
	populate = function(c, s)
		return {
			----------------------------
			-- :help highlight-groups --
			----------------------------

			ColorColumn = { bg = c.base.float },
			Conceal = { fg = c.base.com },
			CurSearch = { bg = c.colors_dim.yellow },
			-- Cursor
			CursorColumn = "ColorColumn",
			-- CursorIM
			CursorLine = "ColorColumn",
			-- CursorLineFo
			CursorLineNr = { fg = c.colors_normal.yellow },
			-- CursorLineSi
			DiffAdd = { bg = c.colors_dim.green },
			DiffChange = { bg = c.colors_dim.magenta },
			DiffDelete = { bg = c.colors_dim.red },
			DiffText = { bg = c.colors_dim.blue },
			Directory = { fg = c.colors_normal.cyan },
			-- EndOfBuffer
			ErrorMsg = { bg = c.colors_dim.red },
			FloatBorder = { fg = c.base.ui, bg = c.base.float },
			-- FloatTitle
			FoldColumn = "LineNr",
			Folded = { fg = c.base.com, bg = c.colors_dim.cyan },
			IncSearch = { bg = c.base.sel },
			-- lCursor
			LineNr = { fg = c.base.ui },
			-- LineNrAbove
			-- LineNrBelow
			MatchParen = { fg = c.colors_bright.yellow, bg = c.base.sel },
			ModeMsg = { fg = c.base.com },
			-- MoreMsg
			-- MsgArea
			-- MsgSeparator
			NonText = "Whitespace",
			Normal = { fg = c.base.fg, bg = s.transparent_background and "NONE" or c.base.bg },
			NormalFloat = { bg = c.base.float },
			-- NormalNC
			Pmenu = "NormalFloat",
			-- PmenuExtra
			-- PmenuExtraSe
			-- PmenuKind
			-- PmenuKindSel
			PmenuSbar = "Pmenu",
			PmenuSel = { bg = c.base.sel },
			PmenuThumb = "PmenuSel",
			Question = "MoreMsg",
			-- QuickFixLine
			Search = { fg = c.base.bg, bg = c.colors_dim.yellow },
			SignColumn = "LineNr",
			SpecialKey = "Whitespace",
			SpellBad = { fg = c.colors_normal.red },
			SpellCap = { fg = c.colors_normal.blue },
			SpellLocal = { fg = c.colors_normal.yellow },
			SpellRare = { fg = c.colors_bright.yellow },
			StatusLine = "NormalFloat",
			StatusLineNC = { fg = c.base.com, bg = c.base.float },
			Substitute = { bg = c.colors_dim.red },
			TabLine = "StatusLineNC",
			TabLineFill = "StatusLine",
			TabLineSel = { bg = c.base.float },
			-- TermCursor
			-- TermCursorNC
			Title = { fg = c.colors_normal.yellow },
			Visual = { bg = c.base.sel },
			-- VisualNOS
			WarningMsg = { fg = c.colors_normal.red },
			Whitespace = { fg = c.base.ui },
			WildMenu = "NormalFloat",
			-- WinBar
			-- WinBarNC
			WinSeparator = { fg = c.base.ui },

			----------------------
			-- :help group-name --
			----------------------

			Comment = { fg = c.base.com, italic = s.italic_comments },

			Constant = { fg = c.colors_normal.magenta },
			-- String
			Character = { fg = c.colors_bright.blue },
			Number = { fg = c.colors_bright.magenta },
			Boolean = "Number",
			-- Float

			Identifier = { fg = c.base.fg },
			Function = { fg = c.colors_bright.yellow },

			Statement = { fg = c.colors_normal.yellow },
			-- Conditional
			-- Repeat
			-- Label
			Operator = { fg = c.colors_bright.red },
			-- Keyword
			-- Exception

			PreProc = { fg = c.colors_bright.green },
			-- Include
			-- Define
			-- Macro
			-- PreCondit

			Type = { fg = c.colors_normal.cyan },
			-- StorageClass
			-- Structure
			-- Typedef

			Special = "Function",
			SpecialChar = { fg = c.colors_bright.cyan },
			-- Tag
			Delimiter = { fg = c.colors_dim.yellow },
			-- SpecialComment
			-- Debug

			Underlined = { underline = true },

			Ignore = { fg = c.base.ui },

			Error = { bg = c.colors_dim.red },

			Todo = { fg = c.colors_bright.red, bold = true },

			--------------------------------
			-- :help diagnostic-highlight --
			--------------------------------

			DiagnosticError = { fg = c.colors_normal.red },
			DiagnosticWarn = { fg = c.colors_bright.yellow },
			DiagnosticInfo = { fg = c.colors_bright.blue },
			DiagnosticHint = { fg = c.colors_bright.green },

			----------------------------
			-- :h lspconfig-highlight --
			----------------------------

			-- LspInfoTitle
			-- LspInfoList
			-- LspInfoFiletype
			-- LspInfoTip
			LspInfoBorder = "FloatBorder",

			--------------------------------
			-- :help treesitter-highlight --
			--------------------------------

			-- ['@boolean'] = { },
			-- ['@float'] = { },
			-- ['@number'] = { },
			-- ['@character'] = { },
			-- ['@character.special'] = { },
			-- ['@string'] = { },
			-- ['@string.regex'] = { },
			["@string.escape"] = { fg = c.colors_normal.blue },
			-- ['@string.special'] = { },

			-- ['@keyword'] = { },
			["@keyworc.colors_dim.function"] = "PreProc",
			-- ['@keyworc.colors_dim.operator'] = { },
			-- ['@keyworc.colors_dim.return'] = { },
			-- ['@conditional'] = { },
			-- ['@conditional.ternary'] = { },
			-- ['@exception'] = { },
			-- ['@include'] = { },
			-- ['@repeat'] = { },

			-- ['@constant'] = { },
			-- ["@constant.builtin"] = { fg = c.colors_normal.magenta, italic = italic },
			["@constant.macro"] = "Constant",
			["@label"] = "SpecialChar",
			-- ["@symbol"] = { fg = c.base.fg, italic = italic },
			-- ['@namespace'] = { },
			-- ['@variable'] = { },
			["@variable.builtin"] = "@symbol",

			-- ['@function'] = { },
			-- ['@function.builtin'] = { },
			["@function.macro"] = "Function",
			["@constructor"] = "Function",
			-- ['@method'] = { },
			-- ['@parameter'] = { },

			-- ['@type'] = { },
			-- ['@type.builtin'] = { },
			-- ['@type.definition'] = { },
			["@type.qualifier"] = "Statement",
			["@storageclass"] = "Statement",
			["@storageclass.lifetime"] = "@label",
			-- ['@attribute'] = { }, -- unused
			-- ['@field'] = { },
			-- ['@property'] = { },

			-- ['@punctuation.bracket'] = { },
			["@punctuation.delimiter"] = { fg = c.colors_normal.red },
			-- ['@punctuation.special'] = { },

			-- ['@text'] = {},
			-- ["@text.strong"] = { bold = bold },
			-- ["@text.emphasis"] = { italic = italic },
			-- ["@text.underline"] = { underline = underline },
			-- ["@text.strike"] = { strikethrough = strikethrough },
			-- ['@text.title'] = {},
			["@text.literal"] = { fg = c.base.com },
			-- ["@text.uri"] = { fg = c.colors_bright.blue, underline = underline },
			-- ['@text.math'] = {},
			-- ['@text.environment'] = {},
			["@text.environment.name"] = "PreProc",
			["@text.reference"] = { fg = c.colors_normal.magenta },
			["@text.todo"] = "Todo",
			-- ['@text.note'] = {},
			-- ['@text.warning'] = {},
			-- ['@text.danger'] = {},
			-- ['@text.diff.add'] = {},
			-- ['@text.diff.delete'] = {},

			-- ['@tag'] = {},
			["@tag.attribute"] = "@label",
			["@tag.delimiter"] = "Delimiter",

			-- :help lsp-highlight -------------------

			LspReferenceText = "IncSearch",
			LspReferenceRead = "NormalFloat",
			LspReferenceWrite = "NormalFloat",

			-- TODO: Clean up the rest

			TelescopeNormal = "NormalFloat",

			--- :help vimtex-syntax-reference --------

			texOptSep = "@punctuation.delimiter",
			texOptEqual = "Operator",
			texFileArg = "Constant",
			-- texTitleArg = { bold = bold },
			texRefArg = "Constant",

			texMathCmd = "Function",
			texMathSymbol = "Operator",
			texMathZone = "TSMath",
			texMathDelimZone = "TSPunctDelimiter",
			texMathDelim = "Delimiter",
			texMathEnvArgName = "PreProc",

			--- netrw: there's no comprehensive list of highlights... --

			netrwClassify = "Delimiter",
			netrwTreeBar = "Delimiter",
			netrwExe = { fg = c.colors_normal.red },
			netrwSymLink = { fg = c.colors_normal.magenta },

			---- :h gitsigns -------------------------

			GitSignsAdd = { fg = c.colors_normal.green },
			GitSignsChange = { fg = c.colors_normal.magenta },
			GitSignsDelete = { fg = c.colors_normal.red },
			GitSignsCurrentLineBlame = { fg = c.colors_normal.blue },

			SignifySignAdd = "GitSignsAdd",
			SignifySignChange = "GitSignsChange",
			SignifySignDelete = "GitSignsDelete",

			---- :h indent-blankline-highlights ------
			IndentBlanklineChar = { fg = c.base.sel, nocombine = true },
			IndentBlanklineSpaceChar = "IndentBlanklineChar",
			IndentBlanklineSpaceCharBlankline = "IndentBlanklineChar",
		}
	end,
}

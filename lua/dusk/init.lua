local M = {}

M.colors = {
	base = "#1e1e1e",
	mantle = "#1a1a1a",
	crust = "#161616",
	surface0 = "#242424",
	surface1 = "#2b2b2b",
	surface2 = "#333333",
	overlay0 = "#404040",
	overlay1 = "#4a4a4a",
	overlay2 = "#5a5a5a",
	subtext0 = "#808080",
	subtext1 = "#9a9a9a",
	text = "#d4d4d4",
	pink = "#e8a0bf",
	mauve = "#c49ae8",
	red = "#e86a7a",
	maroon = "#f08090",
	peach = "#dbb074",
	yellow = "#ebc48a",
	green = "#a3c985",
	teal = "#7dcac4",
	sky = "#98dad5",
	sapphire = "#98cbea",
	blue = "#7eb8da",
	lavender = "#f0b8cf",
	none = "NONE",
}

M.options = {
	transparent_background = false,
	term_colors = true,
	dim_inactive = false,
	styles = {
		comments = { "italic" },
		conditionals = {},
		loops = {},
		functions = {},
		keywords = {},
		strings = {},
		variables = {},
		numbers = {},
		booleans = {},
		properties = {},
		types = {},
		operators = {},
	},
	integrations = {
		cmp = true,
		gitsigns = true,
		nvimtree = true,
		neotree = true,
		telescope = true,
		treesitter = true,
		mini = true,
		native_lsp = {
			enabled = true,
			underlines = {
				errors = { "undercurl" },
				hints = { "undercurl" },
				warnings = { "undercurl" },
				information = { "undercurl" },
			},
		},
		indent_blankline = { enabled = true },
		mason = true,
		noice = true,
		notify = true,
		which_key = true,
		fidget = true,
		flash = true,
		blink_cmp = true,
		snacks = true,
	},
}

function M.setup(opts)
	M.options = vim.tbl_deep_extend("force", M.options, opts or {})
end

function M.load()
	if vim.g.colors_name then
		vim.cmd("hi clear")
	end

	vim.o.termguicolors = true
	vim.g.colors_name = "dusk"

	local c = M.colors
	local o = M.options

	local bg = o.transparent_background and c.none or c.base
	local bg_dim = o.transparent_background and c.none or c.mantle

	local function style(tbl)
		return table.concat(tbl, ",")
	end

	local highlights = {
		-- Editor
		Normal = { fg = c.text, bg = bg },
		NormalNC = { fg = c.text, bg = o.dim_inactive and c.mantle or bg },
		NormalFloat = { fg = c.text, bg = c.surface0 },
		FloatBorder = { fg = c.surface2, bg = c.surface0 },
		FloatTitle = { fg = c.pink, bg = c.surface0, bold = true },
		Cursor = { fg = c.base, bg = c.pink },
		CursorLine = { bg = "#2a2a2a" },
		CursorColumn = { bg = "#2a2a2a" },
		CursorLineNr = { fg = c.text, bold = true },
		LineNr = { fg = c.overlay1 },
		SignColumn = { fg = c.surface2, bg = bg },
		ColorColumn = { bg = c.surface0 },
		Conceal = { fg = c.overlay2 },
		SpecialKey = { fg = c.overlay0 },
		NonText = { fg = c.overlay0 },
		Whitespace = { fg = c.overlay0 },
		EndOfBuffer = { fg = c.base },

		-- Popup menu
		Pmenu = { fg = c.text, bg = c.surface0 },
		PmenuSel = { fg = c.text, bg = c.surface2, bold = true },
		PmenuSbar = { bg = c.surface1 },
		PmenuThumb = { bg = c.overlay0 },

		-- Search
		Search = { fg = c.base, bg = c.peach },
		IncSearch = { fg = c.base, bg = c.pink },
		CurSearch = { fg = c.base, bg = c.pink },
		Substitute = { fg = c.base, bg = c.red },

		-- Visual
		Visual = { bg = "#3d2d35" },
		VisualNOS = { bg = "#3d2d35" },

		-- Diff
		DiffAdd = { bg = "#2a3325" },
		DiffChange = { bg = "#332d22" },
		DiffDelete = { bg = "#332228" },
		DiffText = { bg = "#4a4030" },
		diffAdded = { fg = c.green },
		diffRemoved = { fg = c.red },
		diffChanged = { fg = c.peach },
		diffOldFile = { fg = c.red },
		diffNewFile = { fg = c.green },
		diffFile = { fg = c.blue },
		diffLine = { fg = c.subtext0 },
		diffIndexLine = { fg = c.teal },

		-- Spelling
		SpellBad = { sp = c.red, undercurl = true },
		SpellCap = { sp = c.peach, undercurl = true },
		SpellLocal = { sp = c.teal, undercurl = true },
		SpellRare = { sp = c.mauve, undercurl = true },

		-- Folds
		Folded = { fg = c.subtext0, bg = c.surface1 },
		FoldColumn = { fg = c.overlay0, bg = bg },

		-- Messages
		ErrorMsg = { fg = c.red, bold = true },
		WarningMsg = { fg = c.peach, bold = true },
		ModeMsg = { fg = c.text, bold = true },
		MoreMsg = { fg = c.blue },
		Question = { fg = c.blue },

		-- Statusline
		StatusLine = { fg = c.text, bg = c.mantle },
		StatusLineNC = { fg = c.subtext0, bg = c.mantle },
		WinBar = { fg = c.text, bg = bg },
		WinBarNC = { fg = c.subtext0, bg = bg },
		WinSeparator = { fg = c.surface2, bg = bg },
		VertSplit = { fg = c.surface2, bg = bg },

		-- Tabline
		TabLine = { fg = c.subtext0, bg = c.mantle },
		TabLineFill = { bg = c.mantle },
		TabLineSel = { fg = c.text, bg = c.surface0 },

		-- Title
		Title = { fg = c.blue, bold = true },
		Directory = { fg = c.blue },

		-- Misc
		MatchParen = { fg = c.pink, bold = true },
		qfLineNr = { fg = c.peach },
		qfFileName = { fg = c.blue },
		QuickFixLine = { bg = c.surface1 },
		WildMenu = { fg = c.text, bg = c.surface2 },

		-- Syntax (base vim groups)
		Comment = { fg = c.overlay2, italic = o.styles.comments[1] == "italic" },
		Constant = { fg = c.peach },
		String = { fg = c.green, italic = o.styles.strings[1] == "italic" },
		Character = { fg = c.green },
		Number = { fg = c.peach },
		Boolean = { fg = c.blue },
		Float = { fg = c.peach },

		Identifier = { fg = c.text },
		Function = { fg = c.blue },

		Statement = { fg = c.pink },
		Conditional = { fg = c.pink },
		Repeat = { fg = c.pink },
		Label = { fg = c.pink },
		Operator = { fg = c.blue },
		Keyword = { fg = c.pink },
		Exception = { fg = c.pink },

		PreProc = { fg = c.pink },
		Include = { fg = c.pink },
		Define = { fg = c.pink },
		Macro = { fg = c.pink },
		PreCondit = { fg = c.pink },

		Type = { fg = c.teal },
		StorageClass = { fg = c.pink },
		Structure = { fg = c.teal },
		Typedef = { fg = c.teal },

		Special = { fg = c.teal },
		SpecialChar = { fg = c.teal },
		Tag = { fg = c.pink },
		Delimiter = { fg = c.subtext0 },
		SpecialComment = { fg = "#707070", italic = true },
		Debug = { fg = c.peach },

		Underlined = { fg = c.blue, underline = true },
		Bold = { bold = true },
		Italic = { italic = true },
		Ignore = { fg = c.overlay2 },
		Error = { fg = c.red },
		Todo = { fg = c.base, bg = c.peach, bold = true },

		-- Treesitter
		["@variable"] = { fg = c.text },
		["@variable.builtin"] = { fg = c.pink },
		["@variable.parameter"] = { fg = c.text },
		["@variable.member"] = { fg = c.text },
		["@constant"] = { fg = c.peach },
		["@constant.builtin"] = { fg = c.peach },
		["@constant.macro"] = { fg = c.peach },
		["@module"] = { fg = c.text },
		["@module.builtin"] = { fg = c.pink },
		["@label"] = { fg = c.pink },

		["@string"] = { fg = c.green },
		["@string.documentation"] = { fg = c.green },
		["@string.regexp"] = { fg = c.peach },
		["@string.escape"] = { fg = c.teal },
		["@string.special"] = { fg = c.teal },
		["@string.special.symbol"] = { fg = c.teal },
		["@string.special.url"] = { fg = c.blue, underline = true },

		["@character"] = { fg = c.green },
		["@character.special"] = { fg = c.teal },
		["@boolean"] = { fg = c.blue },
		["@number"] = { fg = c.peach },
		["@number.float"] = { fg = c.peach },

		["@type"] = { fg = c.teal },
		["@type.builtin"] = { fg = c.teal },
		["@type.definition"] = { fg = c.teal },
		["@type.qualifier"] = { fg = c.pink },

		["@attribute"] = { fg = c.peach },
		["@attribute.builtin"] = { fg = c.peach },
		["@property"] = { fg = c.text },

		["@function"] = { fg = c.blue },
		["@function.builtin"] = { fg = c.blue },
		["@function.call"] = { fg = c.blue },
		["@function.macro"] = { fg = c.blue },
		["@function.method"] = { fg = c.blue },
		["@function.method.call"] = { fg = c.blue },
		["@constructor"] = { fg = c.blue },

		["@operator"] = { fg = c.blue },
		["@keyword"] = { fg = c.pink },
		["@keyword.coroutine"] = { fg = c.pink },
		["@keyword.function"] = { fg = c.pink },
		["@keyword.operator"] = { fg = c.pink },
		["@keyword.import"] = { fg = c.pink },
		["@keyword.type"] = { fg = c.pink },
		["@keyword.modifier"] = { fg = c.pink },
		["@keyword.repeat"] = { fg = c.pink },
		["@keyword.return"] = { fg = c.pink },
		["@keyword.debug"] = { fg = c.pink },
		["@keyword.exception"] = { fg = c.pink },
		["@keyword.conditional"] = { fg = c.pink },
		["@keyword.conditional.ternary"] = { fg = c.pink },
		["@keyword.directive"] = { fg = c.pink },
		["@keyword.directive.define"] = { fg = c.pink },

		["@punctuation.delimiter"] = { fg = c.subtext0 },
		["@punctuation.bracket"] = { fg = c.subtext0 },
		["@punctuation.special"] = { fg = c.pink },

		["@comment"] = { fg = c.overlay2, italic = true },
		["@comment.documentation"] = { fg = "#707070", italic = true },
		["@comment.error"] = { fg = c.base, bg = c.red },
		["@comment.warning"] = { fg = c.base, bg = c.peach },
		["@comment.todo"] = { fg = c.base, bg = c.peach },
		["@comment.note"] = { fg = c.base, bg = c.blue },

		["@markup.strong"] = { bold = true },
		["@markup.italic"] = { italic = true },
		["@markup.strikethrough"] = { strikethrough = true },
		["@markup.underline"] = { underline = true },
		["@markup.heading"] = { fg = c.blue, bold = true },
		["@markup.quote"] = { fg = c.subtext1, italic = true },
		["@markup.math"] = { fg = c.teal },
		["@markup.link"] = { fg = c.blue },
		["@markup.link.label"] = { fg = c.blue },
		["@markup.link.url"] = { fg = c.teal, underline = true },
		["@markup.raw"] = { fg = c.green },
		["@markup.raw.block"] = { fg = c.text },
		["@markup.list"] = { fg = c.pink },
		["@markup.list.checked"] = { fg = c.green },
		["@markup.list.unchecked"] = { fg = c.subtext0 },

		["@diff.plus"] = { fg = c.green },
		["@diff.minus"] = { fg = c.red },
		["@diff.delta"] = { fg = c.peach },

		["@tag"] = { fg = c.pink },
		["@tag.attribute"] = { fg = c.peach },
		["@tag.delimiter"] = { fg = c.subtext0 },

		-- LSP Semantic Tokens
		["@lsp.type.class"] = { fg = c.teal },
		["@lsp.type.comment"] = {},
		["@lsp.type.decorator"] = { fg = c.peach },
		["@lsp.type.enum"] = { fg = c.teal },
		["@lsp.type.enumMember"] = { fg = c.teal },
		["@lsp.type.function"] = { fg = c.blue },
		["@lsp.type.interface"] = { fg = c.teal },
		["@lsp.type.macro"] = { fg = c.pink },
		["@lsp.type.method"] = { fg = c.blue },
		["@lsp.type.namespace"] = { fg = c.text },
		["@lsp.type.parameter"] = { fg = c.text },
		["@lsp.type.property"] = { fg = c.text },
		["@lsp.type.struct"] = { fg = c.teal },
		["@lsp.type.type"] = { fg = c.teal },
		["@lsp.type.typeParameter"] = { fg = c.teal },
		["@lsp.type.variable"] = { fg = c.text },
		["@lsp.mod.defaultLibrary"] = { fg = c.blue },
		["@lsp.mod.readonly"] = {},
		["@lsp.typemod.function.defaultLibrary"] = { fg = c.blue },
		["@lsp.typemod.variable.defaultLibrary"] = { fg = c.pink },
		["@lsp.typemod.variable.readonly"] = { fg = c.text },
		["@lsp.typemod.variable.global"] = { fg = c.text },
		["@lsp.typemod.keyword.controlFlow"] = { fg = c.pink },
		["@lsp.typemod.operator.controlFlow"] = { fg = c.pink },

		-- Diagnostics
		DiagnosticError = { fg = c.red },
		DiagnosticWarn = { fg = c.peach },
		DiagnosticInfo = { fg = c.blue },
		DiagnosticHint = { fg = c.subtext0 },
		DiagnosticOk = { fg = c.green },
		DiagnosticUnderlineError = { sp = c.red, undercurl = true },
		DiagnosticUnderlineWarn = { sp = c.peach, undercurl = true },
		DiagnosticUnderlineInfo = { sp = c.blue, undercurl = true },
		DiagnosticUnderlineHint = { sp = c.subtext0, undercurl = true },
		DiagnosticUnderlineOk = { sp = c.green, undercurl = true },
		DiagnosticVirtualTextError = { fg = c.red, bg = "#2e2325" },
		DiagnosticVirtualTextWarn = { fg = c.peach, bg = "#2e2922" },
		DiagnosticVirtualTextInfo = { fg = c.blue, bg = "#252b2e" },
		DiagnosticVirtualTextHint = { fg = c.subtext0, bg = "#282828" },
		DiagnosticVirtualTextOk = { fg = c.green, bg = "#272c25" },
		DiagnosticFloatingError = { fg = c.red },
		DiagnosticFloatingWarn = { fg = c.peach },
		DiagnosticFloatingInfo = { fg = c.blue },
		DiagnosticFloatingHint = { fg = c.subtext0 },
		DiagnosticFloatingOk = { fg = c.green },
		DiagnosticSignError = { fg = c.red },
		DiagnosticSignWarn = { fg = c.peach },
		DiagnosticSignInfo = { fg = c.blue },
		DiagnosticSignHint = { fg = c.subtext0 },
		DiagnosticSignOk = { fg = c.green },

		-- LspInfo
		LspInfoBorder = { fg = c.surface2, bg = c.surface0 },
		LspReferenceText = { bg = "#332a30" },
		LspReferenceRead = { bg = "#332a30" },
		LspReferenceWrite = { bg = "#3d2d35" },
		LspCodeLens = { fg = c.overlay2 },
		LspCodeLensSeparator = { fg = c.overlay0 },
		LspSignatureActiveParameter = { fg = c.pink, bold = true },
		LspInlayHint = { fg = c.overlay2, bg = c.surface0 },
	}

	-- Apply highlights
	for group, hl in pairs(highlights) do
		vim.api.nvim_set_hl(0, group, hl)
	end

	-- Load integrations
	if o.integrations.gitsigns then
		require("dusk.integrations.gitsigns").setup(c)
	end
	if o.integrations.telescope then
		require("dusk.integrations.telescope").setup(c, o)
	end
	if o.integrations.cmp then
		require("dusk.integrations.cmp").setup(c)
	end
	if o.integrations.nvimtree then
		require("dusk.integrations.nvimtree").setup(c)
	end
	if o.integrations.neotree then
		require("dusk.integrations.neotree").setup(c)
	end
	if o.integrations.indent_blankline and o.integrations.indent_blankline.enabled then
		require("dusk.integrations.indent_blankline").setup(c)
	end
	if o.integrations.mini then
		require("dusk.integrations.mini").setup(c)
	end
	if o.integrations.which_key then
		require("dusk.integrations.which_key").setup(c)
	end
	if o.integrations.mason then
		require("dusk.integrations.mason").setup(c)
	end
	if o.integrations.noice then
		require("dusk.integrations.noice").setup(c)
	end
	if o.integrations.notify then
		require("dusk.integrations.notify").setup(c)
	end
	if o.integrations.fidget then
		require("dusk.integrations.fidget").setup(c)
	end
	if o.integrations.flash then
		require("dusk.integrations.flash").setup(c)
	end
	if o.integrations.blink_cmp then
		require("dusk.integrations.blink_cmp").setup(c)
	end
	if o.integrations.snacks then
		require("dusk.integrations.snacks").setup(c)
	end

	-- Terminal colors
	if o.term_colors then
		vim.g.terminal_color_0 = c.surface1
		vim.g.terminal_color_1 = c.red
		vim.g.terminal_color_2 = c.green
		vim.g.terminal_color_3 = c.peach
		vim.g.terminal_color_4 = c.blue
		vim.g.terminal_color_5 = c.pink
		vim.g.terminal_color_6 = c.teal
		vim.g.terminal_color_7 = c.text
		vim.g.terminal_color_8 = c.overlay1
		vim.g.terminal_color_9 = c.maroon
		vim.g.terminal_color_10 = "#b5d99a"
		vim.g.terminal_color_11 = c.yellow
		vim.g.terminal_color_12 = c.sapphire
		vim.g.terminal_color_13 = c.lavender
		vim.g.terminal_color_14 = c.sky
		vim.g.terminal_color_15 = "#f5f5f5"
	end
end

return M

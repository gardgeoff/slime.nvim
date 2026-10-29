-- Slime palette, transcribed from smlombardi/theme-slime (themes/slime-color-theme.json).
--
-- Every value tagged `vscode:` (a workbench color key) or `scope:` (a TextMate scope from tokenColors) is copied
-- verbatim and checked against the JSON by scripts/check.lua. Colors with an alpha channel (#RRGGBBAA) are flattened
-- onto the editor background in slime.colors. Untagged values are fill-ins for things the VS Code theme doesn't define.
return {
	-- Editor
	bg = "#1e2324", -- vscode: editor.background
	fg = "#e1e2de", -- scope: source
	fg_editor = "#e0e0e0", -- vscode: editor.foreground
	cursor = "#a8df5a", -- vscode: editorCursor.foreground
	line = "#65917d11", -- vscode: editor.lineHighlightBackground
	line_nr = "#9ba2a04d", -- vscode: editorLineNumber.foreground
	line_nr_active = "#626a6a", -- vscode: editorLineNumber.activeForeground
	selection = "#6c516e70", -- vscode: editor.selectionBackground
	selection_highlight = "#687F7B33", -- vscode: editor.selectionHighlightBackground
	word_highlight = "#DEB88733", -- vscode: editor.wordHighlightBackground
	find_match = "#8b5f18", -- vscode: editor.findMatchBackground
	find_match_highlight = "#81550e66", -- vscode: editor.findMatchHighlightBackground
	find_range = "#405c5070", -- vscode: editor.findRangeHighlightBackground
	range = "#557B6A33", -- vscode: editor.rangeHighlightBackground
	bracket_match = "#161919", -- vscode: editorBracketMatch.background
	bracket_match_border = "#e0e0e088", -- vscode: editorBracketMatch.border
	whitespace = "#3b3a32", -- vscode: editorWhitespace.foreground
	indent = "#3b414066", -- vscode: editorIndentGuide.background
	indent_active = "#3b4140", -- vscode: editorIndentGuide.activeBackground
	codelens = "#7b8280", -- vscode: editorCodeLens.foreground
	error = "#b64e4e", -- vscode: editorError.foreground
	warning = "#91b147", -- vscode: editorWarning.foreground

	-- Widgets, lists and pickers
	float = "#282e2f", -- vscode: editorWidget.background
	float_border = "#95A29D", -- vscode: editorSuggestWidget.border
	float_selected = "#405c50", -- vscode: editorSuggestWidget.selectedBackground
	match = "#E1B974", -- vscode: list.highlightForeground
	list_active = "#515f59", -- vscode: list.activeSelectionBackground
	list_active_fg = "#ffffff", -- vscode: list.activeSelectionForeground
	list_hover = "#405c5033", -- vscode: list.hoverBackground
	list_inactive = "#3b474280", -- vscode: list.inactiveSelectionBackground
	scrollbar = "#39474799", -- vscode: scrollbarSlider.background
	scrollbar_active = "#53646466", -- vscode: scrollbarSlider.activeBackground
	input = "#24292a", -- vscode: input.background
	input_border = "#37413F", -- vscode: input.border
	input_fg = "#e1e1e1", -- vscode: input.foreground
	picker_group = "#9fb283", -- vscode: pickerGroup.foreground
	badge = "#90599B", -- vscode: badge.background
	badge_active = "#a03f9b", -- vscode: activityBarBadge.background
	button = "#2F6260", -- vscode: button.background
	focus_border = "#3d5252", -- vscode: focusBorder

	-- Workbench chrome
	sidebar = "#1b2020", -- vscode: sideBar.background
	sidebar_fg = "#bcbebe", -- vscode: sideBar.foreground
	sidebar_header = "#1e2523", -- vscode: sideBarSectionHeader.background
	sidebar_title = "#ffffff", -- vscode: sideBarTitle.foreground
	border = "#222222", -- vscode: sideBar.border
	statusbar = "#282e2f", -- vscode: statusBar.background
	statusbar_fg = "#62706a", -- vscode: statusBar.foreground
	debugging = "#cd6564", -- vscode: statusBar.debuggingBackground
	debugging_fg = "#E2E2E2", -- vscode: statusBar.debuggingForeground
	tab_active = "#24292a", -- vscode: tab.activeBackground
	tab_inactive = "#282e2f", -- vscode: tab.inactiveBackground
	tab_inactive_fg = "#d6d6d5a4", -- vscode: tab.inactiveForeground
	tab_modified = "#fabd2f", -- vscode: tab.activeModifiedBorder
	accent = "#ffbb00b2", -- vscode: activityBar.activeBorder
	activity_bar = "#293030", -- vscode: activityBar.background
	breadcrumb = "#62706a", -- vscode: breadcrumb.foreground

	-- Git
	git_add = "#8bac78", -- vscode: editorGutter.addedBackground
	git_change = "#375d4f", -- vscode: editorGutter.modifiedBackground
	git_delete = "#c05557", -- vscode: editorGutter.deletedBackground
	git_modified = "#b2af87", -- vscode: gitDecoration.modifiedResourceForeground
	git_untracked = "#7E935A", -- vscode: gitDecoration.untrackedResourceForeground

	-- Log tokens
	token_info = "#6796e6", -- scope: token.info-token
	token_warn = "#cd9731", -- scope: token.warn-token
	token_error = "#f44747", -- scope: token.error-token
	token_debug = "#b267e6", -- scope: token.debug-token

	-- Terminal (VS Code uses the same values for normal and bright)
	terminal_bg = "#1e2222", -- vscode: terminal.background
	ansi_black = "#666666", -- vscode: terminal.ansiBlack
	ansi_red = "#cd6564", -- vscode: terminal.ansiRed
	ansi_green = "#AEC199", -- vscode: terminal.ansiGreen
	ansi_yellow = "#fff099", -- vscode: terminal.ansiYellow
	ansi_blue = "#6D9CBE", -- vscode: terminal.ansiBlue
	ansi_magenta = "#B081B9", -- vscode: terminal.ansiMagenta
	ansi_cyan = "#80B5B3", -- vscode: terminal.ansiCyan
	ansi_white = "#efefef", -- vscode: terminal.ansiWhite

	-- Syntax
	comment = "#6e7573", -- scope: comment
	comment_doc = "#777777", -- scope: comment.block.documentation.js
	variable = "#be9296", -- scope: variable
	parameter = "#B5919F", -- scope: variable.parameter.js
	object_key = "#A8B298", -- scope: meta.object-literal.key
	func = "#e0ba7d", -- scope: entity.name.function
	keyword = "#9FB3C2", -- scope: keyword
	control = "#d8d29a", -- scope: keyword.control
	control_flow = "#c5a46f", -- scope: keyword.control.flow
	control_php = "#E9D38D", -- scope: keyword.control.php
	storage = "#9FB3C2", -- scope: storage
	storage_type = "#d88f56", -- scope: storage.type
	arrow = "#df7f37", -- scope: storage.type.function.arrow.ts
	modifier = "#ab9b67", -- scope: storage.modifier
	operator = "#b4b4b4", -- scope: keyword.operator
	punctuation = "#CCD2BE", -- scope: punctuation
	template_expression = "#b4ce84", -- scope: punctuation.definition.template-expression.begin.ts
	string = "#8CAEC1", -- scope: string
	escape = "#96b5b4", -- scope: string.regexp
	number = "#B081B9", -- scope: constant.numeric
	constant = "#9876AA", -- scope: constant
	constant_other = "#6D9CBE", -- scope: constant.other
	boolean = "#AB6767", -- scope: constant.language.null.js
	class = "#d6c05d", -- scope: entity.name.class
	support = "#E6CE64", -- scope: support.class
	type = "#8fc4ce", -- scope: entity.name.type
	type_param = "#ddb78a", -- scope: meta.type.parameters.ts entity.name.type.ts
	type_primitive = "#C8BA7C", -- scope: support.type.primitive.ts
	this_ts = "#E6DDA8", -- scope: variable.language.this.ts
	func_ts = "#e0e0e0", -- scope: entity.name.function.ts (also punctuation.decorator.ts)
	invalid = "#F8F8F0", -- scope: invalid.illegal

	-- HTML
	tag = "#c9b567", -- scope: entity.name.tag
	tag_punctuation = "#929292", -- scope: punctuation.definition.tag
	attribute = "#9ab383", -- scope: entity.other.attribute-name.html
	attribute_value = "#82A2B4", -- scope: string.quoted.double.html
	doctype = "#C48851", -- scope: meta.tag.sgml.doctype.html

	-- CSS / SCSS
	css_property = "#83A5A1", -- scope: support.type.property-name.css
	css_value = "#C0C0C3", -- scope: support.constant.property-value.css
	css_class = "#B8CA9C", -- scope: entity.other.attribute-name.class.css
	css_tag = "#BEB558", -- scope: entity.name.tag.css
	css_id = "#BE7C81", -- scope: entity.other.attribute-name.id.css
	css_attribute = "#AB6767", -- scope: entity.other.attribute-name.css
	css_pseudo = "#7A8D5C", -- scope: entity.other.attribute-name.pseudo-class.css
	css_at_rule = "#e78484", -- scope: keyword.control.at-rule
	css_import = "#BDB66F", -- scope: keyword.control.at-rule.import
	css_important = "#CD6564", -- scope: keyword.other.important
	css_keyframe = "#6897BB", -- scope: entity.other.keyframe-offset.css
	css_ampersand = "#DCCA9C", -- scope: entity.name.tag.reference.scss
	scss_function = "#ccc379", -- scope: support.function.misc.scss
	scss_function_rule = "#97A754", -- scope: keyword.control.at-rule.function.scss
	scss_control = "#D99060", -- scope: keyword.control.if.scss

	-- Markdown
	md_heading = "#BF93B5", -- scope: entity.name.section.markdown
	md_bold = "#CDA479", -- scope: markup.bold
	md_italic = "#B4B378", -- scope: markup.italic
	md_code = "#C6DD88", -- scope: markup.inline.raw.markdown
	md_link = "#bf616a", -- scope: string.other.link
	md_url = "#B2885F", -- scope: meta.link
	md_bullet = "#F0E1B3", -- scope: beginning.punctuation.definition.list.markdown
	md_quote = "#d08770", -- scope: markup.quote

	-- JSON
	json_quote = "#AFAFAF", -- scope: meta.structure.dictionary.json support.type.property-name.json punctuation.support.type.property-name.begin.json

	-- Not in the VS Code theme
	hint = "#9ab383", -- attribute green, closest to VS Code's hint squiggle use
	rainbow = { "#d8d29a", "#B081B9", "#8CAEC1", "#d88f56", "#9ab383", "#e0ba7d", "#be9296" },
}

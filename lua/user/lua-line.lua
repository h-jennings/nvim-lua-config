-- Bubbles config for lualine
-- Author: lokesh-krishna
-- MIT license, see LICENSE for more details.

-- stylua: ignore
local colors = {
    color1 = "#162022",
    color2 = "#cd974b",
    color3 = "#cecece",
    color4 = "#9F9F9F",
    color5 = "#333333",
    color6 = "#cc8bc9",
}

local bubbles_theme = {
	replace = {
		a = { fg = colors.color1, bg = colors.color2, gui = "bold" },
		b = { fg = colors.color3, bg = colors.color1 },
	},
	inactive = {
		a = { fg = colors.color4, bg = colors.color1, gui = "bold" },
		b = { fg = colors.color4, bg = colors.color1 },
		c = { fg = colors.color4, bg = colors.color1 },
	},
	normal = {
		a = { fg = colors.color3, bg = colors.color5, gui = "bold" },
		b = { fg = colors.color3, bg = colors.color1 },
		c = { fg = colors.color3, bg = colors.color1 },
	},
	visual = {
		a = { fg = colors.color1, bg = colors.color6, gui = "bold" },
		b = { fg = colors.color3, bg = colors.color1 },
	},
	insert = {
		a = { fg = colors.color1, bg = colors.color3, gui = "bold" },
		b = { fg = colors.color3, bg = colors.color1 },
	},
}

require("lualine").setup({
	options = {
		theme = bubbles_theme,
		component_separators = "|",
		section_separators = { left = "", right = "" },
	},
	sections = {
		lualine_a = {
			{ "mode", separator = { left = "" }, right_padding = 2 },
		},
		lualine_b = { "filename", "branch" },
		lualine_c = { "fileformat" },
		lualine_x = {},
		lualine_y = { "filetype", "progress" },
		lualine_z = {
			{ "location", separator = { right = "" }, left_padding = 2 },
		},
	},
	inactive_sections = {
		lualine_a = { "filename" },
		lualine_b = {},
		lualine_c = {},
		lualine_x = {},
		lualine_y = {},
		lualine_z = { "location" },
	},
	tabline = {},
	extensions = {},
})

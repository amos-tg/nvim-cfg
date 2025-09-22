local colors = {
  blue   = '#80a0ff',
  cyan   = '#79dac8',
  black  = '#080808',
  white  = '#c6c6c6',
  red    = '#ff5189',
  violet = '#d183e8',
  grey   = '#303030',
}

local bubbles_theme = {
  normal = {
    a = { fg = colors.white, bg = 'none' },
    b = { fg = colors.white, bg = 'none' },
    c = { fg = colors.white },
  },

  insert = { a = { fg = colors.white, bg = 'none' } },
  visual = { a = { fg = colors.white, bg = 'none' } },
  replace = { a = { fg = colors.white, bg = 'none' } },

  inactive = {
    a = { fg = colors.white, bg = 'none' },
    b = { fg = colors.white, bg = 'none' },
    c = { fg = colors.white },
  },
}

require('lualine').setup {
	options = {
		theme = bubbles_theme,
		icons_enabled = true,
    component_separators = "",
    section_separators = "",
	}
}

vim.cmd("hi StatusLine guibg=NONE")

--local colors = {
--  blue   = '#80a0ff',
--  cyan   = '#79dac8',
--  black  = '#080808',
--  white  = '#c6c6c6',
--  red    = '#ff5189',
--  violet = '#d183e8',
--  grey   = '#303030',
--}
--
--local bubbles_theme = {
--  normal = {
--    a = { fg = colors.orange], bg = 'none' },
--    b = { fg = colors.orange], bg = 'none' },
--    c = { fg = colors.orange] },
--  },
--
--  insert = { a = { fg = colors.orange], bg = 'none'  } },
--  visual = { a = { fg = colors.orange], bg = 'none' } },
--  replace = { a = { fg = colors.orange], bg = 'none' } },
--
--  inactive = {
--    a = { fg = colors.orange], bg = 'none' },
--    b = { fg = colors.orange], bg = 'none' },
--    c = { fg = colors.orange] },
--  },
--}

local colors = {
  black        = '#282828',
  white        = '#ebdbb2',
  red          = '#fb4934',
  orange       = '#FFA500',
  green        = '#b8bb26',
  blue         = '#83a598',
  yellow       = '#fe8019',
  gray         = '#a89984',
  darkgray     = '#3c3836',
  lightgray    = '#504945',
  inactivegray = '#7c6f64',
}

local gruvbox_theme = {
  normal = {
    a = { bg = 'none', fg = colors.orange, gui = 'bold'},
    b = { bg = 'none', fg = colors.orange},
    c = { bg = 'none', fg = colors.orange}
  },
  insert = {
    a = { bg = 'none', fg = colors.orange, gui = 'bold'},
    b = { bg = 'none', fg = colors.orange},
    c = { bg = 'none', fg = colors.orange}
  },
  visual = {
    a = { bg = 'none', fg = colors.orange, gui = 'bold'},
    b = { bg = 'none', fg = colors.orange},
    c = { bg = 'none', fg = colors.orange}
  },
  replace = {
    a = { bg = 'none', fg = colors.orange, gui = 'bold'},
    b = { bg = 'none', fg = colors.orange},
    c = { bg = 'none', fg = colors.orange}
  },
  command = {
    a = { bg = 'none', fg = colors.orange, gui = 'bold'},
    b = { bg = 'none', fg = colors.orange},
    c = { bg = 'none', fg = colors.orange}
  },
  inactive = {
    a = { bg = 'none', fg = colors.orange, gui = 'bold'},
    b = { bg = 'none', fg = colors.orange},
    c = { bg = 'none', fg = colors.orange}
  }
}

require('lualine').setup {
	options = {
		theme = gruvbox_theme,
		icons_enabled = true,
    component_separators = "",
    section_separators = "",
	}
}

vim.cmd("hi StatusLine guibg=NONE")

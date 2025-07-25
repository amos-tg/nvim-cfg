return {
	{
		"ellisonleao/gruvbox.nvim",

		priority = 1000,

		config = true, 

		opts = {
    	terminal_colors = false, -- add neovim terminal colors
  		undercurl = true,
  		underline = true,
  		bold = true,
  		italic = {
  		  strings = true,
  		  emphasis = true,
  		  comments = true,
  		  operators = false,
  		  folds = true,
  		},
  		strikethrough = false,
  		invert_selection = false,
  		invert_signs = false,
  		invert_tabline = false,
  		invert_intend_guides = false,
  		inverse = true, -- invert background for search, diffs, statuslines and errors
  		contrast = "", -- can be "hard", "soft" or empty string
  		palette_overrides = {},
  		overrides = {},
  		dim_inactive = false,
  		transparent_mode = false,	
		},
	}
}

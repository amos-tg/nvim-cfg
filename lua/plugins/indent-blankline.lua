return {
	{
		"lukas-reineke/indent-blankline.nvim",
		main = "ibl",
		opts = {
    	indent = {
    	  char = "│",
    	  tab_char = "│",
    	},
    	scope = { enabled = true, show_start = true, show_end = true },
    	exclude = {
    	  filetypes = {
    	    "Trouble",
    	    "alpha",
    	    "dashboard",
    	    "help",
    	    "lazy",
    	    "mason",
    	    "neo-tree",
    	    "notify",
    	    "snacks_dashboard",
    	    "snacks_notif",
    	    "snacks_terminal",
    	    "snacks_win",
    	    "toggleterm",
    	    "trouble",
    	  },
    	},
		}
	}
}

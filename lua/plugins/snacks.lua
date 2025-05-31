return {
	{
		"folke/snacks.nvim",
		dependencies = {
			"echasnovski/mini.icons",
			version = "*",
			"nvim-tree/nvim-web-devicons",
		},

		priority = 1000,
		lazy = false,
		opts = {
			bigfile = { enabled = true },
			notifier = { enabled = true },
			quickfile = { enabled = true },
			statuscolumn = { enabled = true }, words = { enabled = true },
		},
	},
}

return {
	{
		"nvim-neo-tree/neo-tree.nvim",
		dependencies = {
  		"nvim-lua/plenary.nvim", "nvim-tree/nvim-web-devicons",
			"MunifTanjim/nui.nvim",
		},
    lazy = false,
		---@module "neo-tree"
		---@type neotree.Config?

		opts = {
			event_handlers = {
      	{
					event = "neo_tree_buffer_enter",
					handler = function()
						vim.opt_local.number = true
						vim.opt_local.relativenumber = true
					end,
				},
			},
    	close_if_last_window = false,
			sort_case_insensitive = true,
			mappings = {
      	["h"] = {
      	    "toggle_node",
      	    nowait = true, -- disable `nowait` if you have existing combos starting with this char that you want to use
      	},
      	["<cr>"] = "open",
      	-- ["<cr>"] = { "open", config = { expand_nested_files = true } }, -- expand nested file takes precedence
      	["<esc>"] = "cancel", -- close preview or floating neo-tree window
      	["P"] = { "toggle_preview", config = {
      	  use_float = true,
      	  use_image_nvim = false,
      	  -- title = "Neo-tree Preview", -- You can define a custom title for the preview floating window.
      	} },
      	["<C-f>"] = { "scroll_preview", config = {direction = -10} },
      	["<C-b>"] = { "scroll_preview", config = {direction = 10} },
      	["l"] = "focus_preview",
      	["S"] = "open_split",
      	-- ["S"] = "split_with_window_picker",
      	["s"] = "open_vsplit",
      	-- ["sr"] = "open_rightbelow_vs",
      	-- ["sl"] = "open_leftabove_vs",
      	-- ["s"] = "vsplit_with_window_picker",
      	["t"] = "open_tabnew",
      	-- ["<cr>"] = "open_drop",
      	-- ["t"] = "open_tab_drop",
      	["w"] = "open_with_window_picker",
      	["C"] = "close_node",
      	["z"] = "close_all_nodes",
      	--["Z"] = "expand_all_nodes",
      	["R"] = "refresh",
      	["a"] = {
      	  "add",
      	  -- some commands may take optional config options, see `:h neo-tree-mappings` for details
      		config = {
      	    show_path = "none", -- "none", "relative", "absolute"
      		}
      	},
      	["A"] = "add_directory", -- also accepts the config.show_path and config.insert_as options.
      	["D"] = "delete",
      	["r"] = "rename",
      	["y"] = "copy_to_clipboard",
      	["x"] = "cut_to_clipboard",
      	["p"] = "paste_from_clipboard",
      	["c"] = "copy", -- takes text input for destination, also accepts the config.show_path and config.insert_as options
      	["m"] = "move", -- takes text input for destination, also accepts the config.show_path and config.insert_as options
      	["e"] = "toggle_auto_expand_width",
      	["q"] = "close_window",
      	["?"] = "show_help",
      	["<"] = "prev_source",
      	[">"] = "next_source",
    	},
  		filesystem = {
    		window = {
      		mappings = {
        		["H"] = "toggle_hidden",
        		["/"] = "fuzzy_finder",
        		["D"] = "fuzzy_finder_directory",
        		--["/"] = "filter_as_you_type", -- this was the default until v1.28
        		["#"] = "fuzzy_sorter", -- fuzzy sorting using the fzy algorithm
        		-- ["D"] = "fuzzy_sorter_directory",
        		["f"] = "filter_on_submit",
        		["<C-x>"] = "clear_filter",
        		["<bs>"] = "navigate_up",
        		["."] = "set_root",
        		["[g"] = "prev_git_modified",
        		["]g"] = "next_git_modified",
        		["i"] = "show_file_details", -- see `:h neo-tree-file-actions` for options to customize the window.
        		["b"] = "rename_basename",
        		["o"] = { "show_help", nowait=false, config = { title = "Order by", prefix_key = "o" }},
        		["oc"] = { "order_by_created", nowait = false },
        		["od"] = { "order_by_diagnostics", nowait = false },
        		["og"] = { "order_by_git_status", nowait = false },
        		["om"] = { "order_by_modified", nowait = false },
        		["on"] = { "order_by_name", nowait = false },
        		["os"] = { "order_by_size", nowait = false },
        		["ot"] = { "order_by_type", nowait = false },
      		},
      		fuzzy_finder_mappings = { -- define keymaps for filter popup window in fuzzy_finder_mode
        		["<down>"] = "move_cursor_down",
        		["<C-n>"] = "move_cursor_down",
        		["<up>"] = "move_cursor_up",
        		["<C-p>"] = "move_cursor_up",
        		["<esc>"] = "close"
      		},
				},
			}
		}
	}
}

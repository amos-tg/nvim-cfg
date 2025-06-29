local lspconfig = require("lspconfig")

lspconfig.rust_analyzer.setup {
	settings = {
		['rust-analyzer'] = {},
	},
}

lspconfig.lua_ls.setup {
	settings = {
		Lua = {},
		cmd = { "lua-language-server" },
		filetypes = { "lua" },
		single_file_support = true,
	}
}

lspconfig.bashls.setup {
	settings = {
		cmd = { "bash-language-server", "start" },
		filetypes = { "bash", "sh" },
		bashIde = {
			globPattern = "*@(.sh|.inc|.bash|.command)"
		},
		single_file_support = true,
	}
}

lspconfig.clangd.setup {
	settings = {
		capabilities = {
    	offsetEncoding = { "utf-8", "utf-16" },
			textDocument = {
				completion = {
      		editsNearCursor = true,
				},
			},
		},
  	cmd = { "clangd" },
		filetypes = { "c", "cpp", "objc", "objcpp", "cuda", "proto" },
		single_file_support = true,
	}
}

lspconfig.yamlls.setup {
	settings = {
		redhat = {
    	telemetry = {
      	enabled = false,
			}
		},
		filetype = { "yaml", "yaml.docker-compose", "yaml.gitlab" },
	}
}

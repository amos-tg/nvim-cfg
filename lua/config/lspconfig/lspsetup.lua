vim.lsp.enable('cmake')

vim.lsp.config('rust_analyzer', {
	settings = {
		['rust-analyzer'] = {},
	},
})

vim.lsp.enable('rust_analyzer')

vim.lsp.config('lua_ls', {
	settings = {
		Lua = {},
		cmd = { "lua-language-server" },
		filetypes = { "lua" },
		single_file_support = true,
	}
})

vim.lsp.enable('lua_ls')

vim.lsp.config('bashls', {
	settings = {
		cmd = { "bash-language-server", "start" },
		filetypes = { "bash", "sh" },
		bashIde = {
			globPattern = "*@(.sh|.inc|.bash|.command)"
		},
		single_file_support = true,
	}
})

vim.lsp.enable('bashls')

vim.lsp.config('clangd', {
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
})

vim.lsp.enable('clangd')

vim.lsp.config('yamlls', {
	settings = {
		redhat = {
    	telemetry = {
      	enabled = false,
			}
		},
		filetype = { "yaml", "yaml.docker-compose", "yaml.gitlab" },
	}
})

vim.lsp.enable('yamlls')

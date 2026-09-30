return {
    'stevearc/conform.nvim',
    event = { 'BufWritePre' },
    cmd = { 'ConformInfo' },
    opts = {
	formatters_by_ft = {
	    lua = { 'stylua' },
	    python = { 'ruff_format' },
	    c = { 'clang-format' },
	    cpp = { 'clang-format' },
	    rust = { 'rustfmt' },
	    go = { 'goimports', 'gofmt' },
	    javascript = { 'prettier' },
	    typescript = { 'prettier' },
	    typescriptreact = { 'prettier' },
	    json = { 'prettier' },
	},
	format_on_save = {
	    timeout_ms = 1000,
	    lsp_format = 'fallback',
	},
    },
}

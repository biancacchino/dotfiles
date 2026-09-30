return {
    'nvim-treesitter/nvim-treesitter',
    branch = 'main',
    lazy = false,
    build = ':TSUpdate',
    config = function()
	local parsers = {
	    'lua', 'vim', 'vimdoc', 'query', 'bash',
	    'python', 'c', 'cpp', 'rust', 'go',
	    'javascript', 'typescript', 'tsx', 'java',
	    'json', 'yaml', 'markdown', 'markdown_inline',
	}

	require('nvim-treesitter').setup()
	require('nvim-treesitter').install(parsers)

	local filetypes = {
	    'lua', 'vim', 'help', 'query', 'sh', 'bash',
	    'python', 'c', 'cpp', 'rust', 'go',
	    'javascript', 'javascriptreact', 'typescript', 'typescriptreact', 'java',
	    'json', 'yaml', 'markdown',
	}

	vim.api.nvim_create_autocmd('FileType', {
	    pattern = filetypes,
	    callback = function()
		pcall(vim.treesitter.start)
	    end,
	})
    end,
}

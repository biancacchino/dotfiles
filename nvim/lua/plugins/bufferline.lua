return {
    'akinsho/bufferline.nvim',
    version = '*',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
	require('bufferline').setup({
	    options = {
		diagnostics = 'nvim_lsp',
	    },
	})

	vim.keymap.set('n', '<S-l>', ':BufferLineCycleNext<CR>', { desc = 'Next buffer' })
	vim.keymap.set('n', '<S-h>', ':BufferLineCyclePrev<CR>', { desc = 'Prev buffer' })
	vim.keymap.set('n', '<leader>bd', ':bdelete<CR>', { desc = 'Delete buffer' })
    end,
}

return {
    'folke/trouble.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    cmd = 'Trouble',
    opts = {},
    keys = {
	{ '<leader>xx', '<cmd>Trouble diagnostics toggle<cr>', desc = 'Diagnostics (Trouble)' },
	{ '<leader>xr', '<cmd>Trouble lsp_references toggle<cr>', desc = 'LSP references (Trouble)' },
    },
}

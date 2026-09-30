return {
    'goolord/alpha-nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
	local alpha = require('alpha')
	local dashboard = require('alpha.themes.dashboard')

	dashboard.section.header.val = {
	    '                                                     ',
	    '  ███╗   ██╗██╗   ██╗██╗███╗   ███╗                  ',
	    '  ████╗  ██║██║   ██║██║████╗ ████║                  ',
	    '  ██╔██╗ ██║██║   ██║██║██╔████╔██║                  ',
	    '  ██║╚██╗██║╚██╗ ██╔╝██║██║╚██╔╝██║                  ',
	    '  ██║ ╚████║ ╚████╔╝ ██║██║ ╚═╝ ██║                  ',
	    '  ╚═╝  ╚═══╝  ╚═══╝  ╚═╝╚═╝     ╚═╝                  ',
	    '                                                     ',
	}

	local year_root = vim.fn.expand('~/Library/CloudStorage/OneDrive-YorkUniversity/THIRD YEAR')

	local function open_folder(path)
	    return string.format(
		"<Cmd>lua vim.cmd.cd('%s'); require('nvim-tree.api').tree.open({ path = '%s', update_root = true })<CR>",
		path, path
	    )
	end

	dashboard.section.buttons.val = {
	    dashboard.button('f', '  Find file', ':Telescope find_files<CR>'),
	    dashboard.button('r', '  Recent files', ':Telescope oldfiles<CR>'),
	    dashboard.button('g', '  Live grep', ':Telescope live_grep<CR>'),
	    dashboard.button('n', '  New file', ':enew<CR>'),
	    { type = 'padding', val = 1 },
	    dashboard.button('t', '  THIRD YEAR', open_folder(year_root)),
	    dashboard.button('1', '  MATH 1021', open_folder(year_root .. '/MATH 1021')),
	    dashboard.button('2', '  EECS 3101', open_folder(year_root .. '/EECS 3101')),
	    dashboard.button('3', '  EECS 3311', open_folder(year_root .. '/EECS 3311')),
	    { type = 'padding', val = 1 },
	    dashboard.button('q', '  Quit', ':qa<CR>'),
	}

	alpha.setup(dashboard.opts)
    end,
}

return {
    "lervag/vimtex",
    lazy = false, -- vimtex must be loaded before the first .tex buffer opens
    init = function()
	vim.g.vimtex_view_method = "skim"
	vim.g.vimtex_view_skim_sync = 1
	vim.g.vimtex_view_skim_activate = 0 -- don't let Skim steal focus on every compile
	vim.g.vimtex_compiler_method = "tectonic"

	-- compiling every ~400ms means transient errors on half-typed commands;
	-- never auto-open quickfix, read errors on demand with <localleader>le
	vim.g.vimtex_quickfix_mode = 0
	vim.g.vimtex_compiler_silent = 1

	-- live preview: tectonic is single-shot, so drive the recompile here.
	-- ponytail: debounced write + single-shot compile. A tick that lands
	-- mid-compile is dropped and picked up on the next keystroke, so the
	-- PDF can trail the buffer by one edit in that race. Upgrade path is
	-- texpresso (true incremental, no write).
	local timer = vim.uv.new_timer()
	vim.api.nvim_create_autocmd({ "TextChanged", "InsertLeave", "CursorHoldI" }, {
	    pattern = "*.tex",
	    callback = function(args)
		timer:stop()
		timer:start(400, 0, vim.schedule_wrap(function()
		    if not vim.api.nvim_buf_is_valid(args.buf) then return end
		    if not vim.bo[args.buf].modified then return end
		    vim.api.nvim_buf_call(args.buf, function()
			vim.cmd("silent! write")
			vim.cmd("VimtexCompileSS")
		    end)
		end))
	    end,
	})
    end,
}

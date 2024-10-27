require("Comment").setup({
	pre_hook = function(ctx)
		local U = require("Comment.utils")

		local ts_context_ok, ts_context = pcall(require, "ts_context_commentstring.internal")
		if not ts_context_ok then
			return
		end

		if vim.bo.filetype == "typescriptreact" or vim.bo.filetype == "javascriptreact" then
			local type = ctx.ctype == U.ctype.line and "__default" or "__multiline"
			local location = nil
			if ctx.ctype == U.ctype.block then
				location = require("ts_context_commentstring.utils").get_cursor_location()
			elseif ctx.cmotion == U.cmotion.v or ctx.cmotion == U.cmotion.V then
				location = require("ts_context_commentstring.utils").get_visual_start_location()
			end

			return ts_context.calculate_commentstring({
				key = type,
				location = location,
			})
		end
	end,
})

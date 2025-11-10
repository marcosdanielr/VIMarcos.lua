local config = function()
	local conform = require("conform")

	conform.setup({
		formatters_by_ft = {
			lua = { "stylua" },
			python = { "isort", "black" },
			go = { "goimports", "gofmt" },
			svelte = { "prettierd", "prettier" },
			astro = { "prettierd", "prettier" },
			vue = { "prettierd", "prettier" },
			javascript = { "prettierd", "prettier" },
			typescript = { "prettierd", "prettier" },
			javascriptreact = { "prettierd", "prettier" },
			typescriptreact = { "prettierd", "prettier" },
			json = { "prettierd", "prettier" },
			graphql = { "prettierd", "prettier" },
			java = { "google-java-format" },
			kotlin = { "ktlint" },
			ruby = { "rubocop" },
			markdown = { { "prettierd", "prettier" } },
			erb = { "htmlbeautifier" },
			html = { "prettierd", "prettier" },
			bash = { "beautysh" },
			proto = { "buf" },
			rust = { "rustfmt" },
			yaml = { "yamlfix" },
			toml = { "taplo" },
			css = { "prettierd", "prettier" },
			scss = { "prettierd", "prettier" },
			php = { "pint", "php_cs_fixer" },
			dart = { "dart_format" },
			c = { "clang-format" },
		},
		stop_after_first = true,
	})

	conform.formatters.prettier = {
		prepend_args = { "--prose-wrap", "always" },
	}

	if format_on_save then
		vim.api.nvim_create_autocmd("bufwritepre", {
			pattern = "*",
			callback = function(args)
				conform.format({ bufnr = args.buf, async = false, lsp_fallback = false })
			end,
		})
	end
end

return config

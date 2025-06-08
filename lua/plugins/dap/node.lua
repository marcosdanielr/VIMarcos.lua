local dap = require("dap")

dap.adapters.node2 = {
	type = "executable",
	command = "node",
	args = { vim.fn.stdpath("data") .. "/mason/packages/js-debug-adapter/js-debug/src/dapDebugServer.js" },
}

dap.configurations.javascript = {
	{
		type = "node2",
		request = "launch",
		name = "Launch Program",
		program = "${file}",
		cwd = vim.fn.getcwd(),
		sourceMaps = true,
		protocol = "auto",
		console = "integratedTerminal",
		skipFiles = {
			"<node_internals>/**",
			"${workspaceFolder}/node_modules/**",
		},
	},
	{
		type = "node2",
		request = "attach",
		name = "Attach to Process",
		port = 9229,
		skipFiles = {
			"<node_internals>/**",
			"${workspaceFolder}/node_modules/**",
		},
	},
}

dap.configurations.typescript = {
	{
		type = "node2",
		request = "launch",
		name = "Launch TypeScript Program",
		program = "${file}",
		cwd = vim.fn.getcwd(),
		sourceMaps = true,
		protocol = "auto",
		console = "integratedTerminal",
		skipFiles = {
			"<node_internals>/**",
			"${workspaceFolder}/node_modules/**",
		},
		outFiles = { "${workspaceFolder}/dist/**/*.js" },
	},
	{
		type = "node2",
		request = "attach",
		name = "Attach to TypeScript Process",
		port = 9229,
		skipFiles = {
			"<node_internals>/**",
			"${workspaceFolder}/node_modules/**",
		},
		outFiles = { "${workspaceFolder}/dist/**/*.js" },
	},
}

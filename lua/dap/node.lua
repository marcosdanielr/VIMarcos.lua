local dap = require("dap")

dap.adapters.node2 = {
	type = "executable",
	command = "node",
	args = { os.getenv("HOME") .. "/.local/share/debuggers/vscode-node-debug2/out/src/nodeDebug.js" },
}

dap.configurations.javascript = {
	{
		name = "Launch file",
		type = "node2",
		request = "launch",
		program = "${file}",
		cwd = vim.fn.getcwd(),
		sourceMaps = true,
		protocol = "inspector",
		console = "integratedTerminal",
	},
	{
		name = "Attach to process",
		type = "node2",
		request = "attach",
		processId = require("dap.utils").pick_process,
	},
}

dap.configurations.typescript = {
	{
		name = "Debug ts-node",
		type = "node2",
		request = "launch",
		runtimeExecutable = "node",
		runtimeArgs = {
			"-r",
			"ts-node/register",
			"-r",
			"tsconfig-paths/register",
		},
		args = { "${workspaceFolder}/src/main.ts" },
		cwd = "${workspaceFolder}",
		sourceMaps = true,
		protocol = "inspector",
		console = "integratedTerminal",
	},
}

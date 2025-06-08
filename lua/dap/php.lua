local dap = require("dap")

dap.adapters.php = {
	type = "executable",
	command = "node",
	args = { os.getenv("HOME") .. "/vscode-php-debug/out/phpDebug.js" },
}

dap.configurations.php = {
	{
		name = "PHP: Listen for Xdebug",
		port = 9003,
		request = "launch",
		type = "php",
		breakpoints = {
			exception = {
				Notice = false,
				Warning = false,
				Error = false,
				Exception = false,
				["*"] = false,
			},
		},
	},
}

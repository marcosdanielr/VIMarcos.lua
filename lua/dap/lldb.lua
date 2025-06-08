local dap = require("dap")

dap.adapters.lldb = {
	type = "executable",
	command = os.getenv("HOME") .. "/.local/share/debuggers/codelldb/extension/adapter/codelldb",
	args = {},
	name = "lldb",
}

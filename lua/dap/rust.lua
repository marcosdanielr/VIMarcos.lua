local dap = require("dap")

local function get_cargo_bin()
	local cwd = vim.fn.getcwd()
	local cargo_toml = cwd .. "/Cargo.toml"
	if vim.fn.filereadable(cargo_toml) == 0 then
		return ""
	end
	for line in io.lines(cargo_toml) do
		if line:match('^name%s*=%s*"(.-)"') then
			local name = line:match('^name%s*=%s*"(.-)"')
			return cwd .. "/target/debug/" .. name
		end
	end
	return ""
end

dap.configurations.rust = {
	{
		name = "Debug",
		type = "lldb",
		request = "launch",
		program = get_cargo_bin,
		cwd = "${workspaceFolder}",
		stopOnEntry = false,
		args = {},
		runInTerminal = false,
		initCommands = function()
			local rust_src_path = vim.fn.expand(
				"~/.rustup/toolchains/"
					.. vim.fn.trim(vim.fn.system("rustup show active-toolchain")):match("^[^%s]+")
					.. "/lib/rustlib/src/rust/library"
			)
			return {
				"settings set target.inline-breakpoint-strategy always",
				"settings set target.source-map /rustc/ " .. rust_src_path,
			}
		end,
	},
}

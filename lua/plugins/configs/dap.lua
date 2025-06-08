local config = function()
	local dap = require("dap")
	local ui = require("dapui")

	require("dapui").setup()
	require("dap-go").setup()

	require("mason-nvim-dap").setup({
		automatic_installation = true,
		handlers = {},
		ensure_installed = {
			"php-debug-adapter",
		},
	})

	require("nvim-dap-virtual-text").setup({
		-- This just tries to mitigate the chance that I leak tokens here. Probably won't stop it from happening...
		display_callback = function(variable)
			-- local name = string.lower(variable.name)
			-- local value = string.lower(variable.value)
			-- if name:match("secret") or name:match("api") or value:match("secret") or value:match("api") then
			-- 	return "*****"
			-- end

			if #variable.value > 15 then
				return " " .. string.sub(variable.value, 1, 15) .. "... "
			end

			return " " .. variable.value
		end,
	})

	local dap_languages = {
		"php",
		"node",
		"lldb",
		"rust",
	}

	for _, language in ipairs(dap_languages) do
		require("dap." .. language)
	end

	dap.listeners.before.attach.dapui_config = function()
		ui.open()
	end
	dap.listeners.before.launch.dapui_config = function()
		ui.open()
	end
	dap.listeners.before.event_terminated.dapui_config = function()
		ui.close()
	end
	dap.listeners.before.event_exited.dapui_config = function()
		ui.close()
	end
end

return config

local default_config = {
	style = {
		italic_comments = false,
	},
	palette_overrides = {},
	scheme_overrides = {},
}

local custom_config

return {
	setup = function(user_config)
		if type(user_config) == "table" then
			custom_config.style = vim.tbl_deep_extend("force", default_config, user_config)
		end
	end,
	apply = function(variant)
		if not (variant == "light" or variant == "dark") then
			vim.notify("radiance theme: " .. variant .. " is not a valid variant name.", 4)
			return
		end

		vim.cmd("highlight clear")
		vim.cmd("syntax reset")

		local config = custom_config or default_config
		local palette = require("radiance.palette")

		if type(config.palette_overrides) == "table" then
			palette = vim.tbl_deep_extend("force", palette, config.palette_overrides)
		end

		local scheme = require("radiance.scheme").populate(palette[variant], config.style)

		if type(config.scheme_overrides) == "table" then
			scheme = vim.tbl_deep_extend("force", scheme, config.scheme_overrides)
		end

		for group, opts in pairs(scheme) do
			if type(opts) == "table" then
				vim.api.nvim_set_hl(0, group, opts)
			elseif type(opts) == "string" then
				vim.api.nvim_set_hl(0, group, { link = opts })
			end
		end

		vim.g.colors_name = "radiance"
	end,
}

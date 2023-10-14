local default_config = {
	style = {
		italic_comments = false,
	},
	palette_overrides = {},
	scheme_overrides = {},
}

local custom_config = nil

local M = {}

M.setup = function(user_config)
    if type(user_config) == "table" then
        custom_config = vim.tbl_deep_extend("force", default_config, user_config)
    end
end,

M.get = function() 
    return custom_config or default_config
end

return M
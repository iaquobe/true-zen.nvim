local opts = require("true-zen.config").options
local usp = require("true-zen.utils.ui_settings_applier")
local cmd = vim.cmd

local M = {}

function M.on()
    cmd([[call g:TrueZenBufDo("lua require'true-zen.utils.ui_settings_applier'.load_settings(require'true-zen.config'.options['ui']['left'], 'OTHER')")]])
end

function M.off()
    cmd([[call g:TrueZenBufDo("lua require'true-zen.utils.ui_settings_applier'.load_settings(require'true-zen.config'.options['ui']['left'], 'USER')")]])
end

return M

-- This file needs to have same structure as nvconfig.lua 
-- https://github.com/NvChad/ui/blob/v3.0/lua/nvconfig.lua
-- Please read that file to know all available options :( 

---@type ChadrcConfig
local M = {}

M.base46 = {
	theme = "chadracula",

	-- hl_override = {
	-- 	Comment = { italic = true },
	-- 	["@comment"] = { italic = true },
	-- },
}

-- M.nvdash = { load_on_startup = true }

M.ui = {
  statusline = {
    theme = "default", -- default/vscode/vscode_colored/minimal
    separator_style = "default", -- default/round/block/arrow
    order = nil, -- nil will use default order
    modules = {
      cursor = function()
        local line = vim.fn.line(".")
        local total = vim.fn.line("$")
        return "%#St_pos_sep#" .. "%#St_pos_icon#" .. " %#St_pos_text# " .. line .. "/" .. total .. " "
      end,
    },
  },
}

return M

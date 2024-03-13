---@type MappingsTable
local M = {}

M.general = {
  n = { -- Add mappings for nomal mode when the file is not being edited
    [";"] = { ":", "enter command mode", opts = { nowait = true } },

    --  format with conform
    ["<leader>fm"] = {
      function()
        require("conform").format()
      end,
      "formatting",
    }

  },
  v = {  -- Add mappings for visual mode
    [">"] = { ">gv", "indent"},
  },
}

-- more keybinds!

return M

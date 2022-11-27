-- Imports the plugin's additional Lua modules.
local fetch = require("neovim-plugin.fetch")
local update = require("neovim-plugin.update")

-- Creates an objects for the module. All of the module's
-- functions are associated with this objects, which is
-- returned when the module is valled with `require`.
local M = {}

-- Routes calls made to this module to functions in the
-- plugin's other modules.
M.fetch_todos = fetch.fetch_todos
M.insert_todo = update.insert_todo
M.complete_todo = update.complete_todo

return M

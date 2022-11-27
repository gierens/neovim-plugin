-- Imports the module for handling SQLite.
local sqlite = require("ljsqlite3")
local create = require("neovim-plugin.create")

-- Creates an object for the module.
local M = {}

-- Fetches todo tasks from the database and
-- prints the output.
function M.fetch_todos()
    create.create_db_if_not_exists()
    local db = sqlite.open(create.db_path)

    local db_results = db:exec("SELECT * FROM todo_list WHERE completed == 'No';")
    if db_results == nil then
        print("No tasks found.")
    else
        for _, item in ipairs(db_results[2]) do print(item) end
    end

    db:close()
end

return M

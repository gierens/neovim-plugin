-- Imports the module for handling SQLite.
local sqlite = require("ljsqlite3")

-- Creates an objects for the module.
local M = {}

M.db_path = os.getenv("HOME") .. "/.todo.db"

function M.create_db()
    local db = sqlite.open(M.db_path)
    db:exec("CREATE TABLE todo_list(id INTEGER PRIMARY KEY AUTOINCREMENT, description TEXT NOT NULL, completed TEXT DEFAULT 'No');")
    db:close()
end

function M.create_db_if_not_exists()
    if io.open(M.db_path, "r") == nil then
        local dbf = io.open(M.db_path, "w")
        dbf:close()
    end

    local db = sqlite.open(M.db_path)
    local db_results = db:exec("SELECT name FROM sqlite_master WHERE type='table' AND name='todo_list';")
    db:close()
    if db_results == nil then
        M.create_db()
    end
end

return M

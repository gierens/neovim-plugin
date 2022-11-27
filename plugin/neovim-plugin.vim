" Title:        Neovim Plugin
" Description:  A plugin to provide an example for creating Neovim plugins.
" Last Change:  November 27, 2022
" Maintainer:   Sandro-Alessio Gierens <https://github.com/gierens>

" Prevents the plugin from being loaded multiple times. If the loaded
" variable exists, do nothing more. Otherwise, assign the loaded
" variable and continue running this instance of the plugin.
if exists('g:loaded_neovimplugin')
    finish
endif
let g:loaded_neovimplugin = 1

" Defines a package path for Lua. This facilitates importing the
" Lua modules from the plugin's dependency directory.
let s:lua_rocks_deps_loc = expand("<sfile>:h:r") . "/../lua/neovim-plugin/deps"
exe "lua package.path = package.path .. ';" . s:lua_rocks_deps_loc . "/lua-?/init.lua'"

" Exposes the plugin's functions for use as commands in Neovim.
command! -nargs=0 FetchTodos lua require("neovim-plugin").fetch_todos()
command! -nargs=0 InsertTodo lua require("neovim-plugin").insert_todo()
command! -nargs=0 CompleteTodo lua require("neovim-plugin").complete_todo()

# neovim-plugin
Sample for the Neovim plugin written in Lua, based on the Linode tutorial:
https://www.linode.com/docs/guides/writing-a-neovim-plugin-with-lua/ .

The original repository the article is based on is:
https://github.com/jacobsimpson/nvim-example-lua-plugin .
It also contains some helpful hints about Lua in Neovim for example.

This example Neovim plugin displays and allows you to update a todo list.
The todo list is stored in a SQLite 3 database located at `~/.todo.db`.

## Installation

1. Example Plugin requires that you have [SQLite 3](https://www.sqlite.org/index.html) installed on your system.
On Linux, you can generally install SQLite 3 using your distribution's package
manager. On macOS, you can install it via [Homebrew](https://brew.sh/). And on Windows, use the
link above to locate a download for SQLite.

2. Use your favorite Vim or Neovim plugin manager to add Example Plugin.
With [vim-plug](https://github.com/junegunn/vim-plug), just add this line to your plugin configuration:
`Plug 'gierens/neovim-plugin'`.

## Usage

Example Plugin allows you to view and update a list of todo tasks. You can
use these commands to interact with the tasks:

- `FetchTodos` shows your current todo tasks.
- `InsertTodo` lets you add a new task, prompting you for its description.
- `CompleteTodo` lets you mark a task completed by selecting the task from
  a list.

You may want to map these to key bindings for easy access. Here are some
example key bindings you can add to your Neovim configuration file:

    nnoremap <LEADER>zf :FetchTodos<CR>
    nnoremap <LEADER>zi :InsertTodo<CR>
    nnoremap <LEADER>zc :CompleteTodo<CR>

By default, the leader key is `\`, so this would let you access the functions by
pressing **\\** followed by **Z** followed by one other key.

if exists("g:loaded_open_terminal_plugin")
    finish
endif

let g:loaded_open_terminal_plugin = 1
let g:toggle_term = "<C-J>"


execute "nnoremap " .. g:toggle_term .. " :call open_terminal_plugin#ToggleTerminal()<CR>"
execute "tnoremap " .. g:toggle_term .. " <C-W>:call open_terminal_plugin#ToggleTerminal()<CR>"


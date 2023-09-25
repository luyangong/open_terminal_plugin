let s:term_bufnr = -1

function! open_terminal_plugin#ToggleTerminal() abort
    if s:term_bufnr == -1 || ! bufexists(s:term_bufnr)
        execute "bot term"
        let s:term_bufnr = bufnr("$")
    elseif bufname("%") == bufname(s:term_bufnr)
        execute "hide"
    else
        execute "unhide " .. s:term_bufnr
        execute bufwinnr(s:term_bufnr) .. "wincmd w"
    endif
endfunction


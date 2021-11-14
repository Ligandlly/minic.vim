map <F5> :call Compile() <CR>

" echom 'Hello minic'
function! Compile()
    if !(&filetype == 'minic')
        " Get file and folder
        let l:filename = expand('%:p')
        let l:folder = expand('%:p:h')

        execute "w"
        execute "! cd " . l:folder . " && " . "MiniCC % -o %<"

        echo l:filename
        echo l:folder
    endif
endfunction



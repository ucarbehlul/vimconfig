" fzf.vim key bindings (requires junegunn/fzf and fzf.vim)

if executable('rg')
  let $FZF_DEFAULT_COMMAND = 'rg --files --hidden --follow --glob "!.git/*"'
elseif executable('fd')
  let $FZF_DEFAULT_COMMAND = 'fd --type f --hidden --follow --exclude .git'
endif

nnoremap <silent> <C-o> :Files<CR>
nnoremap <silent> <C-p> :History<CR>
nnoremap <silent> <leader>b :Buffers<CR>
nnoremap <silent> <leader>g :Rg<CR>
nnoremap <silent> <leader>l :BLines<CR>

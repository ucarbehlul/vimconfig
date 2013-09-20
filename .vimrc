filetype off
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

set nocompatible " must be the first line
syntax on
filetype on
filetype indent on
filetype plugin on

set hidden " bufferlar arasi gezerken bufferlari kapatmamasına yariyor

" code folding "
set foldmethod=indent
set foldlevel=99

"tabs
set expandtab

let mapleader = "_"
map <C-t> <Plug>TaskList
map <leader>h :GundoToggle<CR>

let g:pyflakes_use_quickfix = 0 " quick fixi kapat
let g:pep8_map='<leader>8'

au FileType python set omnifunc=pythoncomplete#Complete
let g:SuperTabDefaultCompletionType = "context"
set completeopt=menuone,longest,preview


map <leader>go :RopeGotoDefinition<CR>
map <leader>re :RopeRename<CR>

map <silent> <C-o> :CommandT<CR>
map <silent> <C-p> :MRU<CR>
map <leader>ls :NERDTreeToggle<CR>

map <C-/> :TComment<CR>

" vim ui "
set background=dark " we plan to use dark background
set laststatus=2 " always show status line
set statusline=%<%f\%h%m%r%=%-20.(line=%l\ \ col=%c%V\ \ totlin=%L%)\ \ \%h%m%r%=%-40(bytval=0x%B,%n%Y%)\%P " a nice status line showing line column totlines
set hlsearch        " highlight searches
"set nohlsearch 	 " do not highlight searched for phrases
"set incsearch       " do incremental searching
set tabstop=4 		" numbers of spaces of tab character
set shiftwidth=4	" numbers of spaces to (auto)indent
set number          " show line numbers
set title           " show title in console title bar
set nostartofline   " don't jump to first character when paging
set whichwrap=b,s,h,l,<,>,[,]   " move freely between lines
set backspace=indent,eol,start " make backspace a more flexible
set wildmode=list:longest " turn on wild mode huge list
set mouse=a " use mouse when possible
set shortmess=aOstT " shortens messages to avoid press a key message 
set clipboard =unnamed " use system clipboard when possible

" Text Formatting/Layout "
set formatoptions=rq " Automatically insert comment leader on return, and let gq format comment

" Folding "
set foldenable " Turn on folding
set foldmethod=manual " What to fold is defined looking at syntax

"General key mappings "
map <silent> <PageUp> 1000<C-U>
map <silent> <PageDown> 1000<C-D>
imap <silent> <PageUp> <C-O>1000<C-U>
imap <silent> <PageDown> <C-O>1000<C-D

"tab navigation as in a browser like firefox
nmap <C-t><C-t> :tabnew<RETURN>
imap <C-t><C-t> <ESC>:tabnew<RETURN>
imap <C-t><C-w> <ESC>:tabclose<RETURN>
nmap <C-t><C-w> :tabclose<RETURN>

"split window navigation
noremap <silent> <C-w><C-w> :wincmd q<CR>
nmap <silent> <C-w><C-Up> :wincmd k<CR>
nmap <silent> <C-w><C-Down> :wincmd j<CR>
nmap <silent> <C-w><C-Left> :wincmd h<CR>
nmap <silent> <C-w><C-Right> :wincmd l<CR>

"buffer navigation
nmap <silent> <C-b><C-w> :bd<CR>
nmap <silent> <C-b><C-n> :bnext<CR>
nmap <silent> <C-b><C-b> :bprev<CR>

"paste as in gui with ctrl-v
nmap <silent> <C-v> p']
imap <silent> <C-v> <ESC>p']i

"delete block text in visual mode without copying
vmap <BACKSPACE> "_d

"disable middle mouse paste"
"map <MiddleMouse> <Nop>
"imap <MiddleMouse> <Nop>

" Plugin key mappings "

" File formats "
au BufNewFile,BufRead  *.phtml  set syntax=php
au BufNewFile,BufRead  *.pls    set syntax=dosini
au BufNewFile,BufRead  modprobe.conf    set syntax=modconf

" Run commands on startup
"autocmd VimEnter * NERDTree
"autocmd VimEnter * wincmd p
augroup json_autocmd
  autocmd!
  autocmd FileType json set autoindent
  autocmd FileType json set formatoptions=tcq2l
  autocmd FileType json set textwidth=78 shiftwidth=2
  autocmd FileType json set softtabstop=2 tabstop=8
  autocmd FileType json set expandtab
  autocmd FileType json set foldmethod=syntax
augroup END


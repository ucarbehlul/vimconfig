filetype off
execute pathogen#infect()

set nocompatible " must be the first line
syntax enable
filetype on
filetype plugin indent on

set encoding=utf-8
set hidden " bufferlar arasi gezerken bufferlari kapatmamasına yariyor
set ignorecase "case insensitive search

set updatetime=1000 " ne kadar surede ui guncellenecek

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

map <C-/> :TComment<CR>

" vim ui "
set background=dark
colorscheme gruvbox

set laststatus=2 " always show status line
"set statusline=%<%f\%h%m%r%=%-20.(line=%l\ \ col=%c%V\ \ totlin=%L%)\ \ \%h%m%r%=%-40(bytval=0x%B,%n%Y%)\%P " a nice status line showing line column totlines
set hlsearch        " highlight searches
"set nohlsearch 	 " do not highlight searched for phrases
"set incsearch       " do incremental searching
set tabstop=2 		" numbers of spaces of tab character
set shiftwidth=2	" numbers of spaces to (auto)indent
set number          " show line numbers
set title           " show title in console title bar
set nostartofline   " don't jump to first character when paging
set whichwrap=b,s,h,l,<,>,[,]   " move freely between lines
set backspace=indent,eol,start " make backspace a more flexible
set wildmode=list:longest " turn on wild mode huge list
set mouse=a " use mouse when possible
set shortmess=aOstT " shortens messages to avoid press a key message 
set clipboard =unnamed " use system clipboard when possible
set pastetoggle=<F2> " toggle paste mode quickly

" make p in Visual mode replace the selected text with the yank register
vnoremap p <Esc>:let current_reg = @"<CR>gvdi<C-R>=current_reg<CR><Esc>

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
nmap <silent> <C-b><C-w> :TagbarClose<CR>:bd<CR> " Tagbar crashes if not closed on buffer deletion
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
nmap <F8> :TagbarToggle<CR>

" File formats "
au BufNewFile,BufRead  *.phtml  set syntax=php
au BufNewFile,BufRead  *.pls    set syntax=dosini
au BufNewFile,BufRead  modprobe.conf    set syntax=modconf

" Run commands on startup
"autocmd VimEnter * NERDTree
"autocmd VimEnter * wincmd p

" python-mode settings
let g:pymode_lint_on_write = 0 " no checking on save, it's slow
let g:pymode_rope_complete_on_dot = 0 " youcompleteme ile cakisiyor

let g:airline#extensions#tabline#enabled = 1 "airline buffers bar at top

"ale syntax checker
let g:airline#extensions#ale#enabled = 1
let g:ale_echo_msg_error_str = '❌'
let g:ale_echo_msg_warning_str = '⚠️'
let g:ale_echo_msg_format = '%severity%  [%linter%] %s'

let g:CommandTTraverseSCM = 'pwd'
map <silent> <C-o> :CommandT<CR>
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlPMRU'
map <leader>ls :NERDTreeToggle<CR>

let g:ycm_auto_hover = ''


call plug#begin()
Plug 'tpope/vim-sensible'
" Plug 'tpope/vim-commentary'
" Plug 'lervag/vimtex'
" Plug 'itchyny/lightline.vim'
" Plug 'pearofducks/vim-quack-lightline'
Plug 'sirver/ultisnips'
Plug 'yegappan/mru'
Plug 'sonph/onehalf', { 'rtp': 'vim' }
call plug#end()

let g:UltiSnipsExpandTrigger = '<tab>'
let g:UltiSnipsJumpForwardTrigger = '<tab>'
let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'

" let g:vimtex_view_method='skim'

" Disable showing warnings and errors in quickfix window.
" let g:vimtex_quickfix_enabled=0

" Disable overfull/underfull \hbox and all package warnings
"let g:vimtex_quickfix_latexlog = {
"			\ 'overfull' : 0,
"			\ 'underfull' : 0,
"			\ 'references' : 0,
"			\}

" When 'ignorecase' and 'smartcase' are both on,
" if a pattern contains an uppercase letter,
" it is case sensitive, otherwise, it is not. 
set ignorecase
set smartcase
set incsearch
set number

filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=2
" when indenting with '>', use 4 spaces width
set shiftwidth=2
" On pressing tab, insert 4 spaces
set expandtab

" autocmd FileType tex nmap <buffer> <C-Space> :w<CR> <bar> :!latexmk -pdf %<CR><CR>

nmap <buffer> <C-Space> :w<CR> <bar> :!latexmk -pdf %<CR><CR>

colorscheme onehalfdark

" This removes the scrollbars in MacVim
set guioptions=

set autochdir
set guifont=Monaco:h13

" let g:lightline = {
"       \ 'colorscheme': 'quack',
"       \ 'active': {
"       \   'left': [ [ 'mode', 'paste' ],
"       \             [ 'fugitive'],[ 'filename' ] ]
"       \ },
"       \ 'component_function': {
"       \   'fugitive': 'LLFugitive',
"       \   'readonly': 'LLReadonly',
"       \   'modified': 'LLModified',
"       \   'filename': 'LLFilename',
"       \   'mode': 'LLMode'
"       \ }
"       \ }
" 
" function! LLMode()
"   let fname = expand('%:t')
"   return fname == '__Tagbar__' ? 'Tagbar' :
"         \ fname == 'ControlP' ? 'CtrlP' :
"         \ lightline#mode() == 'NORMAL' ? 'N' :
"         \ lightline#mode() == 'INSERT' ? 'I' :
"         \ lightline#mode() == 'VISUAL' ? 'V' :
"         \ lightline#mode() == 'V-LINE' ? 'V' :
"         \ lightline#mode() == 'V-BLOCK' ? 'V' :
"         \ lightline#mode() == 'REPLACE' ? 'R' : lightline#mode()
" endfunction
" 
" function! LLModified()
"   if &filetype == "help"
"     return ""
"   elseif &modified
"     return "+"
"   elseif &modifiable
"     return ""
"   else
"     return ""
"   endif
" endfunction
" 
" function! LLReadonly()
"   if &filetype == "help"
"     return ""
"   elseif &readonly
"     return "!"
"   else
"     return ""
"   endif
" endfunction
" 
" function! LLFugitive()
"   return exists('*fugitive#head') ? fugitive#head() : ''
" endfunction
" 
" function! LLFilename()
"   return ('' != LLReadonly() ? LLReadonly() . ' ' : '') .
"        \ ('' != expand('%:t') ? expand('%:t') : '[No Name]') .
"        \ ('' != LLModified() ? ' ' . LLModified() : '')
" endfunction

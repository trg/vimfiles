" Set Color Scheme
:colo golden 

" Open NERDTree & Change Focus to window
autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p

" Ctrl - D -> Toggle NERDTree
nmap <silent> <C-D> :NERDTreeToggle<CR>

" Disable Wrapping Text
set nowrap

" Add line numbers
set nu

" Auto Indent
set cindent
set smartindent
set autoindent

" Tab Options
set shiftwidth=2
set tabstop=2
set softtabstop=2
set expandtab

" Set color line at 80 chars for certain file types
" First, clear them out, then set by file
autocmd Filetype * setlocal colorcolumn=0
autocmd FileType ruby,javascript setlocal colorcolumn=80

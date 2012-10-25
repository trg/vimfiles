"
" GENERAL
" 

" Set Color Scheme
":colo Molokai 
":colo Tomorrow-Night-Bright
:colo railscasts

" Set font size + family
" set guifont=Monaco:h12
set guifont=Inconsolata:h12

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
" set cindent
set smartindent
set autoindent

" Tab Options
set shiftwidth=2
set tabstop=2
set softtabstop=2
set expandtab

filetype plugin indent on

" Set color line at 80 chars for certain file types
" First, clear them out, then set by file
autocmd Filetype * setlocal colorcolumn=0
autocmd FileType ruby,javascript setlocal colorcolumn=80

" LESS CSS
autocmd! BufRead,BufNewFile *.less set filetype=less 

"
" PYTHON
"

" Whitespace Chars
"autocmd FileType python setlocal list listchars=tab:→\ ,trail:·
set list listchars=tab:→\ ,trail:·

" Ignore certain files in NERDTree
let NERDTreeIgnore = ['\.pyc$']

autocmd FileType python setlocal expandtab shiftwidth=4 softtabstop=4


" 
" RUBY
" 

" Autocomplete Dropdown, http://www.cuberick.com/2008/10/ruby-autocomplete-in-vim.html
"autocmd FileType ruby,eruby set omnifunc=rubycomplete#Complete
"autocmd FileType ruby,eruby let g:rubycomplete_buffer_loading = 1
"autocmd FileType ruby,eruby let g:rubycomplete_rails = 1
"autocmd FileType ruby,eruby let g:rubycomplete_classes_in_global = 1
" improve autocomplete menu color
"highlight Pmenu ctermbg=238 gui=bold

"
" NodeJS
"

" Let vim know that .ejs is basically .html
au BufNewFile,BufRead *.ejs set filetype=html



" PATHOGEN
source ~/.vim/bundle/pathogen/autoload/pathogen.vim
call pathogen#infect()

" BEHAVIOR
let mapleader = ","
set wrap
set linebreak
set nolist
set formatoptions+=1
set tabstop=2
set shiftwidth=2
set number
set autoindent
set sm
set expandtab
set hlsearch
set incsearch
set ruler
set noswapfile
set backspace=indent,eol,start
set backupdir=~/.vim/backups
set directory=~/.vim/swaps

" GENERAL APPEARANCE
set gfn=Consolas\ for\ BBEdit:h14
set guioptions-=T
set guioptions-=r
set guioptions-=l
set guioptions-=R
set guioptions-=L
set guioptions-=b
set statusline=%F%m%r%h%w\ %Y\ [%04v][%p%%]\ %{fugitive#statusline()}\ %{SyntasticStatuslineFlag()}
set laststatus=2

" Solarized
let g:solarized_contrast="high"    "default value is normal
let g:solarized_visibility="high"    "default value is normal
let g:solarized_diffmode="high"    "default value is normal
let g:solarized_hitrail=1    "default value is 0
syntax enable
set background=light
colorscheme solarized

" delimitMate
let g:delimitMate_expand_cr = 1
let g:delimitMate_expand_space = 1
let g:SuperTabCrMapping = 0

" syntastic
let g:syntastic_enable_signs=1

" supertab
let g:SuperTabDefaultCompletionType = "<C-x><C-o>"

set tags=./tags;
filetype plugin on
filetype indent on
let coffee_make_options = "--bare"
" FILETYPES
if has("autocmd")
  augroup filetypes
    autocmd BufRead,BufNewFile *.module set filetype=php
    autocmd BufRead,BufNewFile *.install set filetype=php
    autocmd BufRead,BufNewFile *.test set filetype=php
    autocmd BufNewFile,BufRead *.less set filetype=less
    autocmd BufRead,BufNewFile *.css3 set filetype=css
    autocmd BufRead,BufNewFile *.dss set filetype=css
    autocmd FileType python set omnifunc=pythoncomplete#Complete
    autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
    autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
    autocmd FileType css set omnifunc=csscomplete#CompleteCSS
    autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
    autocmd FileType php set omnifunc=phpcomplete#CompletePHP
    autocmd FileType c set omnifunc=ccomplete#Complete
    au BufWritePost *.coffee silent CoffeeMake! -b | cwindow | redraw!
  augroup END
endif

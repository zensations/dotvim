filetype off
call pathogen#infect()

call l9#defineVariableDefault('g:fuf_buffertag_ctagsPath'  , 'pctags')
filetype plugin indent on
let mapleader = ","
set tags+=~/Sites/tags
" FuzzyFinder Keymaps
nnoremap ,f :FufFile **/<CR>
nnoremap ,t :FufBufferTag <CR>
nnoremap ,b :FufBuffer <CR>
nnoremap j gj
nnoremap k gk
vnoremap j gj
vnoremap k gk

" DRUPAL
if has("autocmd")
  " Drupal *.module and *.install files.
  augroup module
    autocmd BufRead,BufNewFile *.module set filetype=php
    autocmd BufRead,BufNewFile *.install set filetype=php
    autocmd BufRead,BufNewFile *.test set filetype=php
    autocmd BufNewFile,BufRead *.less set filetype=less
    autocmd BufRead,BufNewFile *.css3 set filetype=css
    autocmd BufRead,BufNewFile jquery.*.js set ft=javascript syntax=jquery
    autocmd FileType python set omnifunc=pythoncomplete#Complete
    autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
    autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
    autocmd FileType css set omnifunc=csscomplete#CompleteCSS
    autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
    autocmd FileType php set omnifunc=phpcomplete#CompletePHP
    autocmd FileType c set omnifunc=ccomplete#Complete
  augroup END
endif
syntax on
" colorscheme and font
"let molokai_original=1
"colorscheme molokai
colorscheme solarized
set background=light
set gfn=Consolas:h14
" add directories for ctags
" set tags+=tags;$HOME/Sites
set guioptions-=T
set guioptions-=r
set guioptions-=l
set guioptions-=R
set guioptions-=L
set guioptions-=b
set guioptions-=e
set wrap
set linebreak
set nolist
set formatoptions+=1
set tabstop=2
set shiftwidth=2
set number
set autoindent
set smartindent
set sm
set expandtab
set hlsearch
set incsearch
set ruler
set noswapfile
set backspace=indent,eol,start
set backupdir=~/.vimbackups
set directory=~/.vimswaps

" ------------------------------------------------------------------
" Solarized Colorscheme Config
" ------------------------------------------------------------------
let g:solarized_contrast="high"    "default value is normal
let g:solarized_visibility="high"    "default value is normal
let g:solarized_diffmode="high"    "default value is normal
let g:solarized_hitrail=1    "default value is 0
syntax enable
set background=light
colorscheme solarized

let g:delimitMate_expand_cr=1
let g:delimitMate_expand_space=1

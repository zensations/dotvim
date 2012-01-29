let g:syntastic_phpcs_disable=1
" PATHOGEN
source ~/.vim/bundle/pathogen/autoload/pathogen.vim

" To disable a plugin, add it's bundle name to the following list
let g:pathogen_disabled = []

" call add(g:pathogen_disabled, 'haml')
call pathogen#infect()

set foldcolumn=2
set foldmethod=indent

"nnoremap ,f :FufFile **/<CR>
"nnoremap ,t :FufBufferTag <CR>
"nnoremap ,b :FufBuffer <CR>

" BEHAVIOR
let mapleader = ","
set vb
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
if has('statusline')
  set laststatus=2
  " Broken down into easily includeable segments
  set statusline=%<%f\    " Filename
  set statusline+=%w%h%m%r " Options
  set statusline+=%{fugitive#statusline()} "  Git Hotness
  set statusline+=\ [%{&ff}/%Y]            " filetype
  set statusline+=%#warningmsg#
  set statusline+=%{SyntasticStatuslineFlag()}
  set statusline+=%*
  let g:syntastic_enable_signs=1
  set statusline+=%=%-14.(%l,%c%V%)\ %p%%  " Right aligned file nav info
endif

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

let g:syntastic_phpcs_conf=" --standard=DrupalCodingStandard --extensions=php,module,inc,install,test,profile,theme"
set tags=./tags;
filetype plugin on
filetype indent on
set autoread
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
    "autocmd BufWritePost *.coffee silent !coffee -c %
    "autocmd BufWritePost *.less silent exe '!lessc ' . shellescape(expand('<afile>')) . ' ' . shellescape(expand('<afile>:r')) . '.css'
  augroup END
endif

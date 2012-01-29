" load pathogen from bundle directory
source ~/.vim/bundle/pathogen/autoload/pathogen.vim

" to disable a plugin, add it's bundle name to the following list
let g:pathogen_disabled = []
" call add(g:pathogen_disabled, 'someplugin')

" start pathogen
call pathogen#infect()

" fold based on 2 space indents
set foldcolumn=2
set foldmethod=indent

" MAPLEADER
let mapleader = ","

" BEHAVIOR
set visualbell " turn off visual bell
set number " line numbers
set wrap " wrap lines longer than window
set linebreak " break at words instead of characters
set nolist " don't display line endings
set formatoptions+=1 " don't reformat long lines

set expandtab " us tabs instead of spaces
set tabstop=2 " tab width of 2
set shiftwidth=2 " shift width of 2

set autoindent "autoindent newlines

set backspace=indent,eol,start " backspace over lineborders

set incsearch " incremental search
set hlsearch " highlight search terms
set sm "search enhancements, see :help magic

set backupdir=~/.vim/backups " backupdirectory
set directory=~/.vim/swaps " swapdirectory

" GENERAL APPEARANCE

syntax enable " syntax highlighting on
set guioptions-=T " hide toolbar

" allways hide right an left and bottom scrollbars
set guioptions-=r 
set guioptions-=R
set guioptions-=l
set guioptions-=L
set guioptions-=b

" statusline
if has('statusline')
  set ruler " show line and column
  set laststatus=2 " always display statusline
  " Broken down into easily includeable segments
  set statusline=%<%f\    " Filename
  set statusline+=%w%h%m%r " Options
  set statusline+=%{fugitive#statusline()} "  Git Hotness
  set statusline+=\ [%{&ff}/%Y]            " filetype
  set statusline+=%#warningmsg# "warnings
  set statusline+=%{SyntasticStatuslineFlag()} " errors
  set statusline+=%*
  set statusline+=%=%-14.(%l,%c%V%)\ %p%%  " Right aligned file nav info
endif

" set font to Consolas 14pt
set gfn=Consolas:h14 

" set colortheme
colorscheme solarized

" Solarized colortheme configuration
set background=light
let g:solarized_contrast="high"    "default value is normal
let g:solarized_visibility="high"    "default value is normal
let g:solarized_diffmode="high"    "default value is normal
let g:solarized_hitrail=1    "default value is 0


" delimitMate
let g:delimitMate_expand_cr = 1
let g:delimitMate_expand_space = 1
let g:SuperTabCrMapping = 0

" syntastic
let g:syntastic_enable_signs=1 " gutter signs for syntastic errors

" supertab
let g:SuperTabDefaultCompletionType = "<C-x><C-o>" " map tab to omni complete

" phpcs configuration for drupal
let g:syntastic_phpcs_conf=" --standard=DrupalCodingStandard --extensions=php,module,inc,install,test,profile,theme"

set autoread " automatically read changed files from disk

" FILETYPES
filetype plugin on " enable filetype plugins
filetype indent on " enable filetype specific indenting
if has("autocmd")
  augroup filetypes
    " drupal file endings should map to php
    autocmd BufRead,BufNewFile *.module set filetype=php
    autocmd BufRead,BufNewFile *.install set filetype=php
    autocmd BufRead,BufNewFile *.test set filetype=php
    autocmd BufNewFile,BufRead *.inc let g:syntastic_phpcs_disable=1

    " autocompletion functions
    autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
    autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
    autocmd FileType css set omnifunc=csscomplete#CompleteCSS
    autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
    autocmd FileType php set omnifunc=phpcomplete#CompletePHP
  augroup END
endif

" MAPPINGS
nnoremap <silent> <Leader>f :NERDTreeToggle<CR>
nnoremap <silent> <Leader>g :TlistToggle<CR>
nnoremap <silent> <Leader>s :ConqueTerm bash<CR>

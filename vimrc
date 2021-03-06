" Example Vim configuration.
" Copy or symlink to ~/.vimrc or ~/_vimrc.

set nocompatible                  " Must come first because it changes other options.

silent! call pathogen#runtime_append_all_bundles()

syntax enable                     " Turn on syntax highlighting.
filetype plugin indent on         " Turn on file type detection.

set showcmd                       " Display incomplete commands.
set showmode                      " Display the mode you're in.

set backspace=indent,eol,start    " Intuitive backspacing.

set hidden                        " Handle multiple buffers better.

set wildmenu                      " Enhanced command line completion.
set wildmode=list:longest         " Complete files like a shell.

set ignorecase                    " Case-insensitive searching.
set smartcase                     " But case-sensitive if expression contains a capital letter.

set ruler                         " Show cursor position.

set incsearch                     " Highlight matches as you type.
set hlsearch                      " Highlight matches.

set wrap                          " Turn on line wrapping.
set scrolloff=3                   " Show 3 lines of context around the cursor.

set title                         " Set the terminal's title

set visualbell                    " No beeping.

set nobackup                      " Don't make a backup before overwriting a file.
set nowritebackup                 " And again.
set directory=$HOME/.vim/tmp//,.  " Keep swap files in one location

set mouse=a                       " mouse support

set clipboard=unnamed             " use system clipboard

set swapfile
set dir=/usr/local/tmp

" UNCOMMENT TO USE
set tabstop=4                    " Global tab width.
set shiftwidth=4                 " And again, related.
set expandtab                    " Use spaces instead of tabs

set laststatus=2                  " Show the status line all the time
" Useful status information at bottom of screen
set statusline=[%n]\ %<%.99f\ %h%w%m%r%y\ %{fugitive#statusline()}%{exists('*CapsLockStatusline')?CapsLockStatusline():''}%=%-16(\ %l,%c-%v\ %)%P

set list listchars=tab:\ \ ,trail:·

" Or use vividchalk
colorscheme topfunky-light

" set up map leader
let mapleader=","

" use FuzzyFinder
" map <leader>t :FufCoverageFile<cr>
" map <leader>b :FufBuffer<cr>
" nicer colors for popup menu
highlight Pmenu ctermfg=1 ctermbg=4 guibg=grey30

" get rid of search hilights
nmap <silent> <leader>/ :nohlsearch<cr>

" Easy window navigation
nmap <leader>h <C-w>h
nmap <leader>j <C-w>j
nmap <leader>k <C-w>k
nmap <leader>l <C-w>l

" fugitive
nmap <leader>gd :Gdiff<cr>
nmap <leader>gs :Gstatus<cr>
nmap <leader>gc :Gcommit<cr>

" Controversial...swap colon and semicolon for easier commands
"nnoremap ; :
"nnoremap : ;

"vnoremap ; :
"vnoremap : ;

" Automatic fold settings for specific files. Uncomment to use.
" autocmd FileType ruby setlocal foldmethod=syntax
" autocmd FileType css  setlocal foldmethod=indent shiftwidth=2 tabstop=2
" set foldlevelstart=20

" For the MakeGreen plugin and Ruby RSpec. Uncomment to use.
" autocmd BufNewFile,BufRead *_spec.rb compiler rspec

let &t_Co=256

" :w!! reopens the file as sudo and saves it
cmap w!! %!sudo tee > /dev/null %

" macvim use same color scheme

let macvim_skip_colorscheme = 1

set autochdir
set tags=./tags,tags;

" Close the scratch preview window after selection
autocmd CursorMovedI *  if pumvisible() == 0|silent! pclose|endif
autocmd InsertLeave * if pumvisible() == 0|silent! pclose|endif

" javascript-libraries-syntax shit
let g:used_javascript_libs = 'underscore,backbone,angularjs,angularui,requirejs,jasmine'

" php autocomplete
autocmd FileType php set omnifunc=phpcomplete#CompletePHP

" wrap strings in __()
:vmap tg di_(<ESC>pa)<ESC>

" json stuff
let g:vim_json_syntax_conceal = 0
let g:vim_json_warnings=0

:runtime macros/matchit.vim

" Mustache/handlebars syntax shit
let g:mustache_abbreviations = 1

" Jade templating tab shit
autocmd FileType jade set tabstop=2 shiftwidth=2


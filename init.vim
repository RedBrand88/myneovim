" basic settings
set nocompatible
let mapleader = " "

set exrc
set nu
set relativenumber
set nohlsearch
set hidden
set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nowrap
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set scrolloff=8
set noshowmode
set completeopt=menuone,noinsert,noselect
set signcolumn=yes
set wildmenu
set updatetime=50
set path+=**
set cmdheight=2

" 3rd party plugins
call plug#begin('~/.vim/plugged')
    Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
    Plug 'ap/vim-css-color'
    Plug 'jparise/vim-graphql'
    Plug 'tpope/vim-fugitive'
    Plug 'tpope/vim-surround'
    Plug 'tpope/vim-commentary'
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'gruvbox-community/gruvbox'
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()

" notes on plug commands
" -gcc toggles comment from vim commentary it takes a count for
" multiple lines
" -gc + motion toggles comment to motion
" -gC + motion toggles comment to motion ex. gCi( comment inside ()
" -ys + motion + desired adds desired around target and motion
" -cs + existing + desired change existing to desired
" -ds + existing delete existing
" -S + desired add desired around selection in visual mode

" notes on netrw commands
" d make a directory
" D attempt to remove the files/directories
" c make browsing directory the current directory
" gn make top of tree the directory under cursor
" R rename the designated files/directories
" v enter the file/directory under the cursor
" % open a new file in the netrw's current directory

colorscheme gruvbox
filetype plugin on
syntax enable

" commands
command Config :e ~/.vimrc
" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocActionAsync('format')
 
" cursor styles
let &t_SI = "\e[6 q"
let &t_EI = "\e[2 q"

" netrw settings
let g:netrw_banner=0
let g:netrw_browse_split=4
let g:netrw_altv=1
let g:netrw_liststyle=3
let g:netrw_list_hide=',\(^\/\s\s\)\zs\.\S\+'
let g:netrw_list_hide=netrw_gitignore#Hide()
let g:netrw_winsize=30

" use tab for trigger completion
inoremap <silent><expr> <TAB>
    \ pumvisible() ? "\<C-n>" :
    \ CheckBackspace() ? "\<TAB>" :
    \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! CheckBackspace() abort
    let col = col('.') - 1
    return !col || getline('c')[col - 1] =~# '\s'
endfunction

" <CR> will autoselect first option
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" Use K to show documentation in preview window.
nnoremap <silent> K :call ShowDocumentation()<CR>

function! ShowDocumentation()
  if CocAction('hasProvider', 'hover')
    call CocActionAsync('doHover')
  else
    call feedkeys('K', 'in')
  endif
endfunction

" go to code navigation
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-refrences)
" coc notes on builtin commands
" nmap K 'pulls up documentation on function'

" highlight symbol and its references when holding the cursor
autocmd CursorHold * silent call CocActionAsync('highlight')

" rename symbol
nmap <leader>rn <Plug>(coc-rename)

" format selected code
xmap <leader>f <Plug>(coc-format-selected)
nmap <leader>f <Plug>(coc-format-selected)

" basic movement remaps
inoremap jj <esc>
inoremap (( ()<Esc>ha
inoremap {{ {}<Esc>ha
inoremap [[ []<Esc>ha
inoremap "" ""<Esc>ha
inoremap '' ''<Esc>ha
inoremap `` ``<Esc>ha
inoremap zl <Esc>la
inoremap zL <Esc>A
inoremap <C-p> <Esc>:Files<CR>
inoremap <C-b> <Esc>:Buffers<CR>

vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv
vnoremap <Leader>Y "*y 
vnoremap <Leader>P "*p 

nnoremap <Leader>e :Vexplore<CR>
nnoremap <Leader>j :m .+1<CR>==
nnoremap <Leader>k :m .-2<CR>==
nnoremap <Leader>p :Files<CR>
nnoremap <Leader>b :Buffers<CR>
nnoremap <Leader>r :Rg<CR>
nnoremap <Leader>w :w<CR>
nnoremap <Leader>t :bot term ++rows=10<CR>
nnoremap <up> <C-w><up>
nnoremap <down> <C-w><down>
nnoremap <Leader>h <C-w><left>
nnoremap <Leader>l <C-w><right>
nnoremap <Leader>o <C-w>o
nnoremap n nzzzv
nnoremap N Nzzzv
nnoremap J mzJ`z
nnoremap Y y$
nnoremap <Leader>so :so %<CR>
nnoremap <Leader>Y "*yy
nnoremap <Leader>P "*p
nnoremap <Leader>fmt :Format<CR>

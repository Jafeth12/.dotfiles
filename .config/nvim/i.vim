set encoding=utf-8

set cursorline
set tabstop=4 
set softtabstop=4
set shiftwidth=4
set number
set smartindent
set scrolloff=8
set signcolumn=yes:1
set relativenumber

call plug#begin('~/.config/nvim/plugged')
Plug 'https://github.com/tpope/vim-commentary' " For Commenting gcc & gc
Plug 'https://github.com/vim-airline/vim-airline' " Status bar
Plug 'https://github.com/rafi/awesome-vim-colorschemes' " Retro Scheme
Plug 'https://github.com/tpope/vim-fugitive' " fugitive
Plug 'https://github.com/neoclide/coc.nvim'  " Auto Completion
Plug 'https://github.com/preservim/nerdtree' " nerd	tree
call plug#end()

colorscheme gruvbox
highlight Normal     ctermbg=NONE guibg=NONE
" highlight LineNr     ctermbg=NONE guibg=NONE
" highlight SignColumn ctermbg=NONE guibg=NONE

set guifont=Hack:h10:cANSI

" air-line
let g:airline#extensions#tabline#enabled = 1 " Enable the list of buffers
let g:airline_theme = 'minimalist'
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
let g:airline_symbols = {}
endif

  " powerline symbols
  let g:airline_left_sep = ''
  let g:airline_left_alt_sep = ''
  let g:airline_right_sep = ''
  let g:airline_right_alt_sep = ''
  let g:airline_symbols.branch = ''
  let g:airline_symbols.colnr = ' c:'
  let g:airline_symbols.readonly = ''
  let g:airline_symbols.linenr = ' ln:'
  let g:airline_symbols.maxlinenr = ''
  let g:airline_symbols.dirty=' x'

" Automatically closing braces
inoremap {} {}<Right>
inoremap () ()<Right>
inoremap "" ""<Right>
inoremap '' ''<Right>

inoremap { {}<Left>
inoremap ( ()<Left>
inoremap " ""<Left>
inoremap ' ''<Left>

inoremap {<CR> {<CR>}<Esc>ko
inoremap [<CR> [<CR>]<Esc>ko
inoremap (<CR> (<CR>)<Esc>ko

" use <tab> for trigger completion and navigate to the next complete item
" function! CheckBackspace() abort
"   let col = col('.') - 1
"   return !col || getline('.')[col - 1]  =~# '\s'
" endfunction

" inoremap <silent><expr> <Tab>
"       \ coc#pum#visible() ? coc#pum#next(1) :
"       \ CheckBackspace() ? "\<Tab>" :
"       \ coc#refresh()

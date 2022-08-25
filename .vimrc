execute pathogen#infect()
" Show line numbers 
set nu
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set smarttab
set backspace=indent,eol,start
set mouse=a
set hlsearch
set smartindent
set autoindent
set colorcolumn=80
colo desert
" The below two lines are to show the full name of the file
set laststatus=2
" set statusline+=%F
" set statusline+=%{FugitiveStatusline()}
set ruler
set hidden
nnoremap <C-N> :bnext<CR>
nnoremap <C-P> :bprev<CR>
syntax on
filetype plugin indent on
highlight ExtraWhitespace ctermbg=red guibg=red
highlight ColorColumn ctermbg=darkblue
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()
set clipboard=unnamedplus

"if has('cscope')
"  set cscopetag cscopeverbose

"  if has('quickfix')
"    set cscopequickfix=s-,c-,d-,i-,t-,e-
"  endif

"  cnoreabbrev csa cs add
"  cnoreabbrev csf cs find
"  cnoreabbrev csk cs kill
"  cnoreabbrev csr cs reset
"  cnoreabbrev css cs show
"  cnoreabbrev csh cs help

"  command -nargs=0 Cscope cs add $VIMSRC/src/cscope.out $VIMSRC/src
"endif
" source ~/.vim/plugins/cscope_maps.vim

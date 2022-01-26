if &loadplugins
  if has('packages')
    " git submodule add --name xxx git@github.com:xxx.git config/nvim/pack/plugins/opt/xxx
    packadd! vim-colors-xcode
    packadd! nerdtree
    packadd! nerdtree-tabs
    packadd! nerdcommenter
    " packadd! copilot.vim
    packadd! plenary
    packadd! telescope
    " packadd! coq
    packadd! coc
    source ~/.config/nvim/coc.vim

    packadd! vim-rails
    packadd! vim-bundler
    packadd! vim-rake
    packadd! vim-slim
    packadd! vim-ruby

    packadd! vim-javascript
    packadd! typescript-vim
    packadd! vim-jsx-typescript
  endif
endif

let mapleader="\<Space>"
let maplocalleader="\\"

set nocompatible            " disable compatibility to old-time vi
set showmatch               " show matching 
set ignorecase              " case insensitive 
set mouse=v                 " middle-click paste with 
set hlsearch                " highlight search 
set incsearch               " incremental search
set tabstop=2               " number of columns occupied by a tab 
set softtabstop=2           " see multiple spaces as tabstops so <BS> does the right thing
set expandtab               " converts tabs to white space
set shiftwidth=2            " width for autoindents
set autoindent              " indent a new line the same amount as the line just typed
set number                  " add line numbers
set wildmode=longest,list   " get bash-like tab completions
" set cc=80                  " set an 80 column border for good coding style
set mouse=a                 " enable mouse click
set clipboard=unnamedplus   " using system clipboard
set cursorline              " highlight current cursorline
set ttyfast                 " Speed up scrolling in Vim
set noswapfile            " disable creating swap file

" open new split panes to right and below
set splitright
set splitbelow

if !isdirectory("~/.cache/vim/undodir")
    call mkdir("~/.cache/vim/undodir", "p", 0700)
endif
set undodir=~/.cache/vim/undodir " persistent undo
set undofile

filetype plugin indent on   " allow auto-indenting depending on file type
syntax on                   " syntax highlighting

" color schemes
if (has("termguicolors"))
  set termguicolors
endif
colorscheme xcodedark

let g:coc_global_extensions = ['coc-tsserver', 'coc-json', 'coc-html', 'coc-css']

nnoremap <leader>q <cmd>Telescope grep_string<cr>
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

nnoremap <leader>nn <cmd>NERDTreeFind<cr>
nnoremap <leader>nt <cmd>NERDTreeToggle<cr>


"=================RYAN SETTINGS=========================

"-----------------Execution--------------------------
nnoremap <silent> ,<space> :w<cr>:w !python3 %<cr>
nnoremap <silent> n<space> :w<cr>:w !node %<cr>
nnoremap <silent> =<space> :w<cr>:w !gcc % && ./a.out<cr>
"-----------------Execution--------------------------

set belloff=all
set number
set tabstop=4
set shiftwidth=4
set expandtab
colorscheme PaperColor
syntax on
set termguicolors
au! BufNewFile,BufRead *.ejs setf html
let g:netrw_liststyle = 3
let g:netrw_winsize = 25
let g:netrw_preview = 1
command! Pret :CocCommand prettier.forceFormatDocument
let g:user_emmet_leader_key=','
nnoremap <leader>t :w<CR> :Ex <CR> :vertical resize 25<CR>
nnoremap <leader>p :Pret<CR>

"-------StatusLine------
let g:airline_theme='xtermlight'
"-------StatusLine------

"-------RainbowParentheses------
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces
"-------RainbowParentheses------

"=================RYAN SETTINGS=========================


"=================PLUG CONFIGURATION====================
call plug#begin()
Plug 'tpope/vim-sensible'
Plug 'mattn/emmet-vim'
Plug 'neoclide/coc.nvim', { 'branch': 'master', 'do': 'yarn install --frozen-lockfile' }
Plug 'ap/vim-css-color'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-surround'
Plug 'Yggdroot/indentLine'
Plug 'jiangmiao/auto-pairs'
Plug 'uguu-org/vim-matrix-screensaver'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'kien/rainbow_parentheses.vim'
call plug#end()
"=================PLUG CONFIGURATION====================

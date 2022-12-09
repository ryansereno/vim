"=================RYAN SETTINGS=========================

set belloff=all
set number
set tabstop=4
set shiftwidth=4
set expandtab
syntax on
set termguicolors
set encoding=UTF-8
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols = {}
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['vue'] = 'V'
let NERDTreeShowHidden=1
au! BufNewFile,BufRead *.ejs setf html
let g:netrw_liststyle = 3
let g:netrw_winsize = 25
let g:netrw_preview = 1
command! Pret :CocCommand prettier.forceFormatDocument
let g:user_emmet_leader_key=','
"nnoremap <leader>t :w<CR> :Ex <CR> 
"nnoremap <leader>T :w<CR> :Ex <CR> :vertical resize 25<CR>
nnoremap <leader>t :w<CR> :NERDTree<CR>
nnoremap <leader>p :Pret<CR>
colorscheme spaceduck

"-----------------Code-Execution--------------------------
nnoremap <silent> ,<space> :w<cr>:w !python3 %<cr> 
nnoremap <silent> n<space> :w<cr>:w !node %<cr>
nnoremap <silent> =<space> :w<cr>:w !gcc % && ./a.out<cr>
"-----------------Code-Execution--------------------------

"-------StatusLine------
let g:airline_theme='cobalt2'
"-------StatusLine------

"-------RainbowParentheses------
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces
"-------RainbowParentheses------

"-------AutoDark-----------------
  function! ChangeColorScheme(timer) 
      if system('defaults read -g AppleInterfaceStyle') == 0  &&  execute('colo')  != 'spaceduck' "must do logical c    heck on shell exit code, not its reponse
          :colorscheme spaceduck
      elseif execute('colo') != 'onehalflight'
          :colorscheme onehalflight
      endif
  endfunction
  
  function! CheckOSMode()
      let timer = timer_start(100000, 'ChangeColorScheme', {'repeat':-1})
  ""    call ChangeColorScheme()
  endfunction
  
  call CheckOSMode()
"-------AutoDark-----------------
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
Plug 'sheerun/vim-polyglot'
Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'
call plug#end()
"=================PLUG CONFIGURATION====================

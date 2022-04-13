"=================RYAN SETTINGS=========================
nnoremap <silent> ,<space> :w<cr>:w !python3 %<cr>
nnoremap <silent> n<space> :w<cr>:w !node %<cr>
set belloff=all
set number
set tabstop=4
set shiftwidth=4
set expandtab
colorscheme synthwave
syntax on
set termguicolors

"----Autocomplete brackets----
inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O
"----Autocomplete brackets----

"-------AutoDark--------
function! ChangeColorScheme(timer) 
    if system('defaults read -g AppleInterfaceStyle') == 0  &&  execute('colo')  != 'synthwave' "must do logical check on shell exit code, not its reponse
        :colorscheme synthwave
    elseif execute('colo') != 'onehalflight'
        :colorscheme onehalflight
    endif
endfunction

function! CheckOSMode()
    let timer = timer_start(1000, 'ChangeColorScheme', {'repeat':-1})
""    call ChangeColorScheme()
endfunction
""call CheckOSMode()
"-------AutoDark--------

"-------StatusLine------
set statusline=
set statusline+=%f
set statusline+=%=
set statusline+=💾📠📟\ \ \ \ 
set statusline+=%l:%c\ \ \ \ 
"-------StatusLine------

"---------isEdited---------"'
function! IsEdited()
    if exec() == +
        statusline+=💾📠
endfunction
"---------isEdited---------"'

"=================RYAN SETTINGS=========================


"=================PLUG CONFIGURATION====================
call plug#begin()
Plug 'tpope/vim-sensible'
Plug 'mattn/emmet-vim'
Plug 'prettier/vim-prettier', {
  \ 'do': 'yarn install --frozen-lockfile --production',
  \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'svelte', 'yaml', 'html'] }
Plug 'neoclide/coc.nvim', { 'branch': 'master', 'do': 'yarn install --frozen-lockfile' }
Plug 'ap/vim-css-color'
call plug#end()
"=================PLUG CONFIGURATION====================

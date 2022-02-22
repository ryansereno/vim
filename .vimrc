"=================RYAN SETTINGS=========================
nnoremap <silent> ,<space> :w<cr>:!clear;python3 %<cr>
set belloff=all
set number
set tabstop=4
set shiftwidth=4
set expandtab
"=================RYAN SETTINGS=========================


"=================PLUG CONFIGURATION====================
call plug#begin()
Plug 'tpope/vim-sensible'
Plug 'mattn/emmet-vim'
Plug 'prettier/vim-prettier', {
  \ 'do': 'yarn install --frozen-lockfile --production',
  \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'svelte', 'yaml', 'html'] }
Plug 'neoclide/coc.nvim', { 'branch': 'master', 'do': 'yarn install --frozen-lockfile' }
call plug#end()
"=================PLUG CONFIGURATION====================

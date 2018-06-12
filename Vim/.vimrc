set encoding=utf-8
set number
execute pathogen#infect()

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd VimEnter * NERDTree

map :ndt :NEDRTree<CR>
map :nt :NERDTreeToggle<CR>
map :ne :NERDTreeFocus<CR>


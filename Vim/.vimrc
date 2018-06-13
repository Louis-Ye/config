set encoding=utf-8
set number
syntax on
set tabstop=4
set shiftwidth=4
set expandtab

execute pathogen#infect()

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

map :ndt :NERDTree<CR>
map :nt :NERDTreeToggle<CR>
map :ne :NERDTreeFocus<CR>
let NERDTreeShowHidden=1

" The Silver Searcher
if executable('ag')
  " Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
endif

nnoremap K :grep! "\b<C-R><C-W>\b"<CR>:cw<CR>
nnoremap :gp :grep!

" open quickfix window after :grep :make :lvimgrep
augroup myvimrc
    autocmd!
    autocmd QuickFixCmdPost [^l]* cwindow
    autocmd QuickFixCmdPost l*    lwindow
augroup END

" Close quickfix window after selecting a line
autocmd FileType qf nnoremap <buffer> <CR> <CR>:cclose<CR>

" z/ to enable highlight word under cursor when idle
nnoremap z/ :if AutoHighlightToggle()<Bar>set hls<Bar>endif<CR>
function! AutoHighlightToggle()
  let @/ = ''
  if exists('#auto_highlight')
    au! auto_highlight
    augroup! auto_highlight
    setl updatetime=4000
    echo 'Highlight current word: off'
    return 0
  else
    augroup auto_highlight
      au!
      au CursorHold * let @/ = '\V\<'.escape(expand('<cword>'), '\').'\>'
    augroup end
    setl updatetime=500
    echo 'Highlight current word: ON'
    return 1
  endif
endfunction

set hlsearch

" copy to clipboard (might not work with remote-login terminal)
set clipboard=unnamedplus
if has('win32')
  set clipboard=unnamed
endif

colorscheme wombat

" map ze to control + w to move between windows
nnoremap zw <C-w>


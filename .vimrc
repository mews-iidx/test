if &compatible
set nocompatible
endif


"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=/home/Yamauchi/.vim/repos/github.com/Shougo/dein.vim
" Required:
if dein#load_state('/home/Yamauchi/.vim')
  call dein#begin('/home/Yamauchi/.vim')

  " Let dein manage dein
  " Required:
  call dein#add('/home/Yamauchi/.vim/repos/github.com/Shougo/dein.vim')

  " Add or remove your plugins here:
  call dein#add('Shougo/neosnippet.vim')
  call dein#add('Shougo/neosnippet-snippets')
  call dein#add('Shougo/unite.vim')
  call dein#add('Shougo/vimshell.vim')
  call dein#add('Shougo/vimfiler.vim')
  call dein#add('Shougo/vimproc.vim', {'build': 'make'})
  "Indent Guide
  call dein#add('nathanaelkane/vim-indent-guides')
  "Completion
  call dein#add('Shougo/neocomplete.vim')
  "Show oldfiles
  call dein#add('Shougo/neomru.vim')
  "Color Scheme
  call dein#add('tomasr/molokai' )
  "comment out
  call dein#add('tomtom/tcomment_vim')
  call dein#add('tpope/vim-surround')

  " You can specify revision/branch/tag.
  call dein#add('Shougo/vimshell', { 'rev': '3787e5' })

  " Required:
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

"colorscheme molokai settings
syntax on
colorscheme molokai
"highlight Normal ctermbg=none
let g:molokai_original = 1
set t_Co=256

"indent_guide on
let g:indent_guides_enable_on_vim_startup=1

"Unite General Settings
nnoremap [unite] <Nop>
nmap <Space>u [unite]



nnoremap <silent> [unite]c :<C-u>UniteWithCurrentDir -vertical -winwidth=30 -buffer-name=files file<CR>
"nnoremap <silent> [unite]f :<C-u>Unite file  -vertical -winwidth=30 -no-quit  -buffer-name=files -default-action=vsplit<CR>
" nnoremap <silent> [unite]f :<C-u>Unite file  -vertical -winwidth=30 -no-quit  -buffer-name=files <CR>
nnoremap <silent> [unite]f :<C-u>VimFiler -winwidth=30 -split -simple -no-quit <CR>
nnoremap <silent> [unite]b :<C-u>Unite buffer  <CR>
nnoremap <silent> [unite]B :<C-u>Unite bookmark <CR>
nnoremap <silent> [unite]a :<C-u>UniteBookmarkAdd<CR>
nnoremap <silent> [unite]g :<C-u>Unite grep  -vertical <CR>
"vimshell
" noremap <silent> [unite]s :<C-u>VimShell --split=below -popup <CR> <Esc> <C-w>x
noremap <silent> [unite]s :<C-u>VimShell -popup <CR> <Esc> <C-w>x
"
"IDE mode
nmap  [unite]I <Space>uf <C-w>l  <Space>us <Esc> <C-w>k


"custom UniteDefaultAction
call unite#custom#default_action('directory','file')
call unite#custom#default_action('file','vsplit')

noremap <C-h> ^
noremap <C-l> $

" surround
map <F1> bysW
map <C-c> bysW
map <F2> ds
" map <C-x> ds


set hlsearch
set number
set smartindent
set shiftwidth=2
set tabstop=2
set expandtab

"execute pathogen#infect()

"vbundle
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'
Bundle 'gdbvim.tar.gz'

"for GO
Plugin 'fatih/vim-go'
Bundle 'Blackrush/vim-gocode'
Bundle 'dgryski/vim-godef'
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1

"taglist
Bundle 'taglist.vim'

"NERDTree
Bundle 'https://github.com/scrooloose/nerdtree.git'

"CTRLP
Bundle 'https://github.com/ctrlpvim/ctrlp.vim.git'

"Complete
Bundle 'https://github.com/Valloric/YouCompleteMe.git'

"minibufexpl
Bundle 'https://github.com/fholgado/minibufexpl.vim.git'

"Power-line
Bundle 'https://github.com/Lokaltog/vim-powerline.git'
set laststatus=2
let g:Powerline_symbols='unicode'

"for python
Bundle 'https://github.com/klen/python-mode.git'

"for toml
Bundle 'https://github.com/cespare/vim-toml.git'


"for encoding
set fileencodings=utf-8
set termencoding=utf-8 
":syntax enable

set nocompatible
set autoindent
set cindent
set shiftwidth=4
set tabstop=4
set expandtab
"turn off expantab for Makefile
autocmd FileType make setlocal noexpandtab
filetype plugin on

set nu
set showmatch
set ruler
set incsearch
set scrolloff=5

"Colors
syntax on
set background=dark
let g:molokai_original = 1
let g:rehash256 = 1
color molokai
set t_Co=256
set guifont=courier_new:h14
"set background=light
"colorscheme solarized
"au GUIEnter * simalt ~x
"set guioptions-=m
"set guioptions-=T
"set guioptions-=r
"set guioptions-=b
"color desert
"let g:solarized_bold=0
"let g:solarized_degrade

let mapleader = ","
"Fast saving
nmap <leader>w :w!<cr>
nmap <leader>f :find<cr>
nmap <leader>q :q<cr>
nmap <leader>hl <Plug>MarkSet
nmap <leader>hh <Plug>MarkClear
nmap <leader>hr <Plug>MarkRegex
nmap <leader>fn :nohls<cr>
nmap <leader>tag :set tags=tags<cr>
nmap <leader>c :Dox<cr>
nmap <leader>t :r! date \+\%F\ \%T<cr>

"For doxgen
nmap <C-d> :shell<cr>
nmap <C-b> :w<cr> :! php -l %<cr>
nmap <C-z> :call JCommentWriter()<cr>
"Switch multi-windows fastly
"nmap  <M-left> <C-W>left
"nmap  <M-right> <C-W>right
"nmap  <M-up> <C-W>up
"nmap  <M-down> <C-l>down

"Set 7 lines to the cursors - when moving vertical
"set so = 7

"Set gdbvim
"let vimgdb_debug_file=""
set splitright
set previewheight=80
nmap <F7> :run macros/gdb_mappings.vim<cr>


"Taglis source code.
let Tlist_Show_One_File=1
let Tlist_Exit_OnlyWindow=1

"Super Tab
"let SuperTabRetainCompletion Type=2
"let SuperTabDefaultCompletion Type="<C-X><C-O>"

"Find/replace issue
set hlsearch
nmap <F6> :cn<cr>
"nmap <F5> :cp<cr>

"About Comment
"map cc v:s!^!//!g
"map cx v:s!^\s*//!!g v=
"vmap cc :s!^!//!g
"vmap cx :s!^\s*//!!g v=
let loaded_nerd_comments=1

"set tags
"Disable v scroll

"vim run time path

"highlight current line
":hi CursorLine   cterm=NONE ctermbg=darkred ctermfg=white guibg=darkred guifg=white
"set cursorline                                                                                                                                                       
"autocmd WinEnter * setlocal cursorline
"autocmd WinLeave * setlocal nocursorline
"set filetype=python
"au BufNewFile,BufRead *.py,*.pyw setf python

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" cscope setting
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if has("cscope")
  set csprg=/usr/local/bin/cscope
  set csto=1
  set cst
  set nocsverb
  " add any database in current directory
  if filereadable("cscope.out")
    cs add cscope.out
  endif
  set csverb
endif

nmap <C-@>s :cs find s <C-R>=expand("<cword>")<CR><CR>
nmap <C-@>g :cs find g <C-R>=expand("<cword>")<CR><CR>
nmap <C-@>c :cs find c <C-R>=expand("<cword>")<CR><CR>
nmap <C-@>t :cs find t <C-R>=expand("<cword>")<CR><CR>
nmap <C-@>e :cs find e <C-R>=expand("<cword>")<CR><CR>
nmap <C-@>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
nmap <C-@>i :cs find i <C-R>=expand("<cfile>")<CR>$<CR>
nmap <C-@>d :cs find d <C-R>=expand("<cword>")<CR><CR>

"For gotags
let g:tagbar_type_go = {
    \ 'ctagstype' : 'go',
    \ 'kinds'     : [
        \ 'p:package',
    \ 'i:imports:1',
    \ 'c:constants',
    \ 'v:variables',
    \ 't:types',
    \ 'n:interfaces',
    \ 'w:fields',
    \ 'e:embedded',
    \ 'm:methods',
    \ 'r:constructor',
    \ 'f:functions'
        \ ],
    \ 'sro' : '.',
    \ 'kind2scope' : {
        \ 't' : 'ctype',
        \ 'n' : 'ntype'
            \ },
    \ 'scope2kind' : {
        \ 'ctype' : 't',
        \ 'ntype' : 'n'
            \ },
    \ 'ctagsbin'  : 'gotags',
    \ 'ctagsargs' : '-sort -silent'
        \ }



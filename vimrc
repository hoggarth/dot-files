set foldmethod=indent
set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" My Bundles here:
"
" original repos on github
Bundle 'tpope/vim-fugitive'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
Bundle 'actionshrimp/vim-xpath'
Bundle 'wycats/nerdtree'
Bundle 'scrooloose/nerdcommenter'
" vim-scripts repos
Bundle 'L9'
Bundle 'FuzzyFinder'
Bundle 'rails.vim'
Bundle 'Ambient-Theme'
Bundle 'surround.vim'
Bundle 'matchit.zip'
Bundle 'xml.vim'
Bundle 'maven2.vim'
Bundle 'vim-orgmode'
"Bundle 'XML-Folding'
"Bundle 'XML-Completion'
" non github repos
Bundle 'git://git.wincent.com/command-t.git'
Bundle 'vim-ruby/vim-ruby'
" ...

filetype plugin indent on     " required! 
"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..
au! BufWritePost .vimrc source %
" au BufNewFile,BufRead *.xml,*.htm,*.html so ~/.vim/plugin/XMLFolding.vim

set incsearch

noremap <space> za

noremap <Leader>xp :XPathSearchPrompt<CR>

map <Leader>fx :set filetype=xml<CR>
  \:source $VIMRUNTIME/syntax/xml.vim<CR>
  \:set foldmethod=syntax<CR>
  \:source $VIMRUNTIME/syntax/syntax.vim<CR>
  \:colors peachpuff<CR>
  \:iunmap <buffer> <Leader>.<CR>
  \:iunmap <buffer> <Leader>><CR>
  \:inoremap \> ><CR>
  \:echo "XML mode is on"<CR>
  " no imaps for <Leader>
  "\:inoremap \. ><CR>

vmap <Leader>px !xmllint --format -<CR>
nmap <Leader>px !!xmllint --format -<CR>
nmap <Leader>pxa :%!xmllint --format -<CR>

nmap <Leader>i :%!xsltlint<CR>

let g:EclimXmlValidate = 0
let g:xml_syntax_folding=1

autocmd Filetype ruby setlocal ts=2 sts=2 sw=2

syntax on

set encoding=utf-8 fileencodings=ucs-bom,utf-8,cp936
color desert
"""set nu
syntax on
let loaded_matchparen = 1  "括号高亮
set incsearch
set helplang=cn
"""-----缩进"""
set ts=4
set sw=4
set et
"""-----补全"""
set completeopt+=longest
"""-----命令补全-----
set wildmenu   " 显示补全列表
set wildmode=longest:full   " 补全行为设置
"""-----" shift tab pages
map <S-Left> :tabp<CR>
map <S-Right> :tabn<CR>
"离开插入模式后自动关闭预览窗口
autocmd InsertLeave * if pumvisible() == 0|pclose|endif
"回车即选中当前项
inoremap <expr> <CR>       pumvisible() ? "\<C-y>" : "\<CR>"
"上下左右键的行为
inoremap <expr> <Tab>      pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <Down>     pumvisible() ? "\<C-n>" : "\<Down>"
inoremap <expr> <Up>       pumvisible() ? "\<C-p>" : "\<Up>"
inoremap <expr> <PageDown> pumvisible() ? "\<PageDown>\<C-p>\<C-n>" : "\<PageDown>"
inoremap <expr> <PageUp>   pumvisible() ? "\<PageUp>\<C-p>\<C-n>" : "\<PageUp>"
let g:acp_completeoptPreview = 1
"""----- 代码检查"""
let g:pyflakes_use_quickfix = 0
let g:flake8_ignore="E501"

"""----  代码折叠 -----
""autocmd FileType python setlocal foldmethod=indent
"默认展开所有代码
"" set foldlevel=99

""" ---- Vundle ---- 
set nocompatible " be iMproved
filetype off " required!
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'vundle'
Bundle 'AutoComplPop'
Bundle 'pyflakes.vim'
Bundle 'nvie/vim-flake8'
Bundle 'scrooloose/nerdcommenter'
Bundle 'majutsushi/tagbar'
Bundle 'scrooloose/nerdtree'
Bundle 'altercation/vim-colors-solarized'
Bundle 'ervandew/supertab'
Bundle 'bufexplorer.zip'

filetype plugin on

""" ---- 代码结构 ------
let g:tagbar_ctags_bin='/usr/local/bin/ctags'
nmap <C-g> :TagbarToggle<CR>
nmap <C-e> :NERDTreeToggle<CR>
nmap <F5> :!python %

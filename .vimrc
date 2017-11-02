"-----------------------------------------------------------------
" Vundle install
"-----------------------------------------------------------------

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
 set rtp+=~/.vim/bundle/Vundle.vim
 call vundle#begin()
" " alternatively, pass a path where Vundle should install plugins
" "call vundle#begin('~/some/path/here')

" " let Vundle manage Vundle, required
 Plugin 'VundleVim/Vundle.vim'

"--------------------------------------------------
"--------------------------------------------------
"   Plugin list
"--------------------------------------------------
"--------------------------------------------------

" Plugin 'Lokaltog/vim-powerline'
 Plugin 'kien/ctrlp.vim'
 Plugin 'klen/python-mode'
 Plugin 'davidhalter/jedi-vim'
 Plugin 'vim-airline/vim-airline'           " 下方状态栏
 Plugin 'vim-airline/vim-airline-themes'
 Plugin 'majutsushi/tagbar'                 " 列出文件里的变量函数
" Plugin 'ervandew/supertab'
 Plugin 'scrooloose/nerdtree'
 Plugin 'vim-scripts/winmanager'
 Plugin 'vim-scripts/taglist.vim'
 

" Settings for vim-powerline
" cd ~/.vim/bundle
" git clone git://github.com/Lokaltog/vim-powerline.git
" set laststatus=2

" Settings for ctrlp
" cd ~/.vim/bundle
" git clone https://github.com/kien/ctrlp.vim.git
 let g:ctrlp_max_height = 30
 set wildignore+=*.pyc
 set wildignore+=*_build/*
 set wildignore+=*/coverage/*


" Settings for python-mode
" Note: I'm no longer using this. Leave this commented out
" and uncomment the part about jedi-vim instead
" cd ~/.vim/bundle
" git clone https://github.com/klen/python-mode
 map <Leader>g :call RopeGotoDefinition()<CR>
 let ropevim_enable_shortcuts = 1
 let g:pymode_rope_goto_def_newwin = "vnew"
 let g:pymode_rope_extended_complete = 1
 let g:pymode_breakpoint = 0
 let g:pymode_syntax = 1
 let g:pymode_syntax_builtin_objs = 0
 let g:pymode_syntax_builtin_funcs = 0
 map <Leader>b Oimport ipdb; ipdb.set_trace() # BREAKPOINT<C-c>

" Settings for jedi-vim
" cd ~/.vim/bundle
" git clone git://github.com/davidhalter/jedi-vim.git
 let g:jedi#usages_command = "<leader>z"
 let g:jedi#popup_on_dot = 0
 let g:jedi#popup_select_first = 0
 map <Leader>b Oimport ipdb; ipdb.set_trace() # BREAKPOINT<C-c>


" Settings for vim-airline
" Plugin 'vim-airline/vim-airline'
 set laststatus=2
 let g:airline#extensions#tabline#enabled = 1
 let g:airline#extensions#tabline#left_sep = ' '
 let g:airline#extensions#tabline#left_alt_sep = '|'
 let g:airline_powerline_fonts = 1

" Settings for vim-airline-themes
" Plugin 'vim-airline/vim-airline-themes'
 let g:airline_theme='powerlineish'    "bubblegum ubaryd powerlineish wombat
" let g:airline_theme='airlineish'         "simple wombat dark airlineish


"" Settings for tagbar
"" Plugin 'majutsushi/tagbar'
" let g:Tagbar_title = "[Tagbar]"
" function! Tagbar_Start()
""     exe 'q' "执行一个退出命令，关闭自动出现的窗口"
"     exe 'TagbarOpen'
" endfunction
" function! Tagbar_IsValid()
"     return 1
" endfunction
" "文件侦查启动,用以检测文件的后缀  
" filetyp on  
" "设置tagbar使用的ctags的插件,必须要设置对  
" let g:tagbar_ctags_bin='/usr/bin/ctags'  
" "设置tagbar的窗口宽度  
"" let g:tagbar_width=27
"" let g:tagbar_vertical=30
"" let g:tagbar_zoomwidth=30    " 变焦宽度
" "一次只展开一个tag
" let g:tagbar_autoclose=1
"" let g:tagbar_autofocus=1
" let g:tagbar_iconchars = ['▸', '▾']
" "设置tagbar的窗口显示的位置,为左边  
" let g:tagbar_left=1  
" "打开文件自动 打开tagbar  
" autocmd BufReadPost *.cpp,*.c,*.h,*.hpp,*.cc,*.cxx call tagbar#autoopen()  
" "映射tagbar的快捷键  
" map <F7> :TagbarToggle<CR> 


 " Settings for supertab
 " Plugin 'ervandew/supertab'
" let g:SuperTabContextDefaultCompletionType = "<c-n>"
" let g:SuperTabDefaultCompletionType = "context"
" let g:SuperTabMappingTabLiteral = '<C-n>' "(default value: '<c-tab>')


 " Settings for nerdtree
 " Plugin 'scrooloose/nerdtree'
 let g:NERDTree_title = "[NERDTree]"
 function! NERDTree_Start()
"     exe 'q' "执行一个退出命令，关闭自动出现的窗口"
     exe 'NERDTree'
 endfunction
 function! NERDTree_IsValid()
     return 1
 endfunction
 map <F5> :NERDTreeToggle<CR>

 " Settings for winmanager
 " Plugin 'vim-scripts/winmanager'
 let g:winManagerWindowLayout='NERDTree|TagList'
 let g:winManagerWidth=30
" nmap <silent> mt :if IsWinManagerVisible() <BAR> WMToggle<CR> <BAR> else <BAR> WMToggle<CR>:q<CR> endif <CR>
 map <F8> :WMToggle<CR> 
" let g:AutoOpenWinManager = 1


 " Settings for tarlist
 " Plugin 'vim-scripts/taglist.vim'
 filetype on
 let g:Tlist_title = "[TarList]"
 let Tlist_Ctags_Cmd='/usr/bin/ctags'
 let Tlist_Exit_OnlyWindow=1
 map <F7> :TlistToggle<CR> 


" " The following are examples of different formats supported.
" " Keep Plugin commands between vundle#begin/end.
" " plugin on GitHub repo
 Plugin 'tpope/vim-fugitive'
" " plugin from http://vim-scripts.org/vim/scripts.html
 Plugin 'L9'
" " Git plugin not hosted on GitHub
 Plugin 'git://git.wincent.com/command-t.git'
" " git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" " The sparkup vim script is in a subdirectory of this repo called vim.
" " Pass the path to set the runtimepath properly.
 Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" " Install L9 and avoid a Naming conflict if you've already installed a
" " different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}


"--------------------------------------------------
"--------------------------------------------------
"   Plugin list
"--------------------------------------------------
"--------------------------------------------------

" " All of your Plugins must be added before the following line
 call vundle#end()            " required
 filetype plugin indent on    " required
" " To ignore plugin indent changes, instead use:
" "filetype plugin on
" "
" " Brief help
" " :PluginList       - lists configured plugins
" " :PluginInstall    - installs plugins; append `!` to update or just
" :PluginUpdate
" " :PluginSearch foo - searches for foo; append `!` to refresh local cache
" " :PluginClean      - confirms removal of unused plugins; append `!` to
" auto-approve removal
" "
" " see :h vundle for more details or wiki for FAQ
" " Put your non-Plugin stuff after this line



" Sample .vimrc file by Martin Brochhaus
" Presented at PyCon APAC 2012


" ============================================
" Note to myself:
" DO NOT USE <C-z> FOR SAVING WHEN PRESENTING!
" ============================================


" Automatic reloading of .vimrc
 autocmd! bufwritepost .vimrc source %


" Better copy & paste
" When you want to paste large blocks of code into vim, press F2 before you
" paste. At the bottom you should see ``-- INSERT (paste) --``.

 set pastetoggle=<F2>
 set clipboard=unnamed


" Mouse and backspace
 set mouse=a  " on OSX press ALT and click
 set bs=2     " make backspace behave like normal again


" Rebind <Leader> key
" I like to have it here becuase it is easier to reach than the default and
" it is next to ``m`` and ``n`` which I use for navigating between tabs.
 let mapleader = ","


" Bind nohl
" Removes highlight of your last search
" ``<C>`` stands for ``CTRL`` and therefore ``<C-n>`` stands for ``CTRL+n``
" noremap <C-n> :nohl<CR>
" vnoremap <C-n> :nohl<CR>
" inoremap <C-n> :nohl<CR>
 set ignorecase    "搜索时不区分大小写


" Quicksave command
 noremap <C-Z> :update<CR>
 vnoremap <C-Z> <C-C>:update<CR>
 inoremap <C-Z> <C-O>:update<CR>
 inoremap jk <esc>


" Quick quit command
 noremap <Leader>e :quit<CR>  " Quit current window
 noremap <Leader>E :qa!<CR>   " Quit all windows


" bind Ctrl+<movement> keys to move around the windows, instead of using Ctrl+w + <movement>
" Every unnecessary keystroke that can be saved is good for your health :)
 map <c-j> <c-w>j
 map <c-k> <c-w>k
 map <c-l> <c-w>l
 map <c-h> <c-w>h


" easier moving between tabs
 map <Leader>n <esc>:tabprevious<CR>
 map <Leader>m <esc>:tabnext<CR>


" map sort function to a key
 vnoremap <Leader>s :sort<CR>



" easier moving of code blocks
" Try to go into visual mode (v), thenselect several lines of code here and
" then press ``>`` several times.
 vnoremap < <gv  " better indentation
 vnoremap > >gv  " better indentation


" Show whitespace
" MUST be inserted BEFORE the colorscheme command
 autocmd ColorScheme * highlight ExtraWhitespace ctermfg=252 ctermbg=none guibg=red
 au InsertLeave * match ExtraWhitespace /\s\+$/
" hi Normal ctermfg=252 ctermbg=none


" Color scheme
" mkdir -p ~/.vim/colors && cd ~/.vim/colors
" wget -O wombat256mod.vim http://www.vim.org/scripts/download_script.php?src_id=13400
 set t_Co=256
 color wombat256mod
" color molokai 
" let g:molokai_original = 1
" let g:rehash256 = 1
" set background=dark
" colorscheme solarized 
" if has('gui_running')
"     set background=light
" else
"     set background=dark
" endif
" let g:solarized_termcolors=256


" Enable syntax highlighting
" You need to reload this file for the change to apply
 filetype off
 filetype plugin indent on
 syntax on


" Showing line numbers and length
 set number  " show line numbers
" set tw=79   " width of document (used by gd)
" set nowrap  " don't automatically wrap on load
" set fo-=t   " don't automatically wrap text when typing
" set colorcolumn=80
" highlight ColorColumn ctermbg=233


" easier formatting of paragraphs
 vmap Q gq
 nmap Q gqap


" Useful settings
 set history=700
 set undolevels=700


" Real programmers don't use TABs but spaces
 set tabstop=4
 set softtabstop=4
 set shiftwidth=4
 set shiftround
 set expandtab
 set autoindent


" Make search case insensitive
 set hlsearch
 set incsearch
 set ignorecase
 set smartcase


" Disable stupid backup and swap files - they trigger too many events
" for file system watchers
 set nobackup
 set nowritebackup
 set noswapfile


" Setup Pathogen to manage your plugins
" mkdir -p ~/.vim/autoload ~/.vim/bundle
" curl -so ~/.vim/autoload/pathogen.vim https://raw.githubusercontent.com/tpope/vim-pathogen/master/autoload/pathogen.vim
" Now you can install any plugin into a .vim/bundle/plugin-name/ folder
" call pathogen#infect()


" ============================================================================
" Python IDE Setup
" ============================================================================


" Settings for vim-powerline
" cd ~/.vim/bundle
" git clone git://github.com/Lokaltog/vim-powerline.git
" set laststatus=2


" Settings for ctrlp
" cd ~/.vim/bundle
" git clone https://github.com/kien/ctrlp.vim.git
" let g:ctrlp_max_height = 30
" set wildignore+=*.pyc
" set wildignore+=*_build/*
" set wildignore+=*/coverage/*


" Settings for python-mode
" Note: I'm no longer using this. Leave this commented out
" and uncomment the part about jedi-vim instead
" cd ~/.vim/bundle
" git clone https://github.com/klen/python-mode
" map <Leader>g :call RopeGotoDefinition()<CR>
" let ropevim_enable_shortcuts = 1
" let g:pymode_rope_goto_def_newwin = "vnew"
" let g:pymode_rope_extended_complete = 1
" let g:pymode_breakpoint = 0
" let g:pymode_syntax = 1
" let g:pymode_syntax_builtin_objs = 0
" let g:pymode_syntax_builtin_funcs = 0
" map <Leader>b Oimport ipdb; ipdb.set_trace() # BREAKPOINT<C-c>

" Settings for jedi-vim
" cd ~/.vim/bundle
" git clone git://github.com/davidhalter/jedi-vim.git
" let g:jedi#usages_command = "<leader>z"
" let g:jedi#popup_on_dot = 0
" let g:jedi#popup_select_first = 0
" map <Leader>b Oimport ipdb; ipdb.set_trace() # BREAKPOINT<C-c>

" Better navigating through omnicomplete option list
" See http://stackoverflow.com/questions/2170023/how-to-map-keys-for-popup-menu-in-vim
 set completeopt=longest,menuone
 function! OmniPopup(action)
     if pumvisible()
         if a:action == 'j'
             return "\<C-N>"
         elseif a:action == 'k'
             return "\<C-P>"
         endif
     endif
     return a:action
 endfunction

 inoremap <silent><C-j> <C-R>=OmniPopup('j')<CR>
 inoremap <silent><C-k> <C-R>=OmniPopup('k')<CR>


" Python folding
" mkdir -p ~/.vim/ftplugin
" wget -O ~/.vim/ftplugin/python_editing.vim http://www.vim.org/scripts/download_script.php?src_id=5492
 set nofoldenable


 """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
 " 光标的形态
 """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" if exists('$ITERM_PROFILE')
"     if exists('$TMUX') 
"         let &amp;t_SI = "<Esc>[3 q"
"         let &amp;t_EI = "<Esc>[0 q"
"     else
"         let &amp;t_SI = "<Esc>]50;CursorShape=1x7"
"         let &amp;t_EI = "<Esc>]50;CursorShape=0x7"
"     endif
" end 



 """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
 " New File Title
 " """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
 " " 新建.c,.h,.sh,.java文件，自动插入文件头
" autocmd BufNewFile *.cpp,*.[ch],*.sh,*.rb,*.java,*.py exec ":call SetNewTitle()"
 " " 定义函数SetTitle，自动插入文件头
" func SetNewTitle()
     "     "如果文件类型为.sh文件
"     if &filetype == 'sh'
"         call setline(1,"\#!/bin/bash")
"         call append(line("."), "")
"     elseif &filetype == 'python'
"         call setline(1,"#!/usr/bin/env python")
"         call append(line("."),"# coding=utf-8")
"         call append(line(".")+1, "")
"     elseif &filetype == 'ruby'
"         call setline(1,"#!/usr/bin/env ruby")
"         call append(line("."),"# encoding: utf-8")
"         call append(line(".")+1, "")
"     else
"         call setline(1, "/*************************************************************************")
"         call append(line("."), "    > File Name: ".expand("%"))
"         call append(line(".")+1, "    > Author: ")
"         call append(line(".")+2, "    > Mail: ")
"         call append(line(".")+3, "    > Created Time: ".strftime("%c"))
"         call append(line(".")+4, " ************************************************************************/")
"         call append(line(".")+5, "")
"     endif
"     if expand("%:e") == 'cpp'
"         call append(line(".")+6, "#include<iostream>")
"         call append(line(".")+7, "using namespace std;")
"         call append(line(".")+8, "")
"     endif
"     if &filetype == 'c'
"         call append(line(".")+6, "#include<stdio.h>")
"         call append(line(".")+7, "")
"     endif
"     if expand("%:e") == 'h'
"         call append(line(".")+6, "#ifndef _".toupper(expand("%:r"))."_H")
"         call append(line(".")+7, "#define _".toupper(expand("%:r"))."_H")
"         call append(line(".")+8, "#endif")
"     endif
"     if &filetype == 'java'
"         call append(line(".")+6,"public class ".expand("%:r"))
"         call append(line(".")+7,"")
"     endif
" endfunc
" "新建文件后，自动定位到文件末尾
" autocmd BufNewFile * normal G


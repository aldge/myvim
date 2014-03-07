"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" This vimrc is based on the vimrc by Amix, URL:
"         http://www.amix.dk/vim/vimrc.html
" Maintainer: Easwy
" Version: 0.1
" Last Change: 2011/07/16 
" User:zhaohuan
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
source ~/.vim/plugins.vim
syntax on
syntax enable
"filetype plugin indent on

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Set mapleader
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let mapleader = ","
let g:mapleader = ","
set guifont=Consolas:h18

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Moving around and tabs
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Map space to / and c-space to ?
"map <space> /
"map <c-space> ?
"Smart way to move btw. windows
"nmap <C-j> <C-W>j
"nmap <C-k> <C-W>k
"nmap <C-h> <C-W>h
"nmap <C-l> <C-W>l

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Tab set
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Tab configuration
"map <leader>tn :tabnew
"map <leader>te :tabedit
"map <leader>tc :tabclose<cr>
"map <leader>tm :tabmove
"try
"  set switchbuf=useopen
"  set stal=1
"catch
"endtry

"打开文件浏览器
map  <F1>  :NERDTreeToggle <CR>
"打开taglist
map  <F2>  :call OpenTaglist()<CR>
"nnoremap <silent> <F3> :Grep<CR>
"关闭当前Buffer
map  <F4>  :call CloseBufferByAldge()<CR> 
"切换到下一个Buffer
map  <F5>  :bn<CR>
"切换到上一个Buffer
map  <F6>  :call OpenProject()<CR>
"map  <F6>  <Plug>ToggleProject<CR>
"map  <F8>  :call OpenWimmanger()<CR>

"nmap <silent> <Leader>P <Plug>ToggleProject
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" General
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Fast saving
nmap <silent> <leader>ww :w<cr> 
nmap <silent> <leader>wf :w!<cr>

"Fast quiting
nmap <silent> <leader>qw :wq<cr>
nmap <silent> <leader>qf :q!<cr>
"nmap <silent> <leader>qq :call QuitVimByAldge()<cr>
nmap <silent> <leader>qq :call CloseBufferByAldge()<cr>
nmap <silent> <leader>qa :qa<cr>

"Fast reloading of the .vimrc
map <silent> <leader>s :source ~/.vimrc<cr>
"Fast editing of .vimrc
map <silent> <leader>e :e ~/.vimrc<cr>
"When .vimrc is edited, reload it
autocmd! bufwritepost .vimrc source ~/.vimrc

""""""""""""""""""""""""""""""
" showmarks setting
""""""""""""""""""""""""""""""
" Enable ShowMarks
let showmarks_enable = 1
" Show which marks
let showmarks_include = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"
" Ignore help, quickfix, non-modifiable buffers
let showmarks_ignore_type = "hqm"
" Hilight lower & upper marks
let showmarks_hlline_lower = 1
let showmarks_hlline_upper = 1

" For showmarks plugin
"hi ShowMarksHLl ctermbg=Yellow   ctermfg=Black  guibg=#FFDB72    guifg=Black
"hi ShowMarksHLu ctermbg=Magenta  ctermfg=Black  guibg=#FFB3FF    guifg=Black

""""""""""""""""""""""""""""""
" markbrowser setting
""""""""""""""""""""""""""""""
nmap <silent> <leader>mk :MarksBrowser<cr>

""""""""""""""""""""""""""""""
" minibuffer setting
""""""""""""""""""""""""""""""
"let loaded_minibufexplorer = 1         " *** Disable minibuffer plugin
"let g:miniBufExplorerMoreThanOne = 2   " Display when more than 2 buffers
"let g:miniBufExplSplitToEdge = 1       " Always at top
"let g:miniBufExplMaxSize = 3           " The max height is 3 lines
"let g:miniBufExplMapWindowNavVim = 1   " map CTRL-[hjkl]
"let g:miniBufExplUseSingleClick = 1    " select by single click
"let g:miniBufExplModSelTarget = 1      " Dont change to unmodified buffer
"let g:miniBufExplForceSyntaxEnable = 1 " force syntax on
"let g:miniBufExplVSplit = 25
"let g:miniBufExplSplitBelow = 0
"let g:miniBufExplMapCTabSwitchBufs = 1
"let g:miniBufExplMapWindowNavVim = 1
"autocmd BufRead,BufNew :call UMiniBufExplorer

""""""""""""""""""""""""""""""
" BufExplorer
""""""""""""""""""""""""""""""
"let g:bufExplorerDefaultHelp=0       " Do not show default help.
"let g:bufExplorerShowRelativePath=1  " Show relative paths.
"let g:bufExplorerSortBy='mru'        " Sort by most recently used.
"let g:bufExplorerSplitRight=0        " Split left.
"let g:bufExplorerSplitVertical=1     " Split vertically.
"let g:bufExplorerSplitVertSize = 30  " Split width
"let g:bufExplorerUseCurrentWindow=1  " Open in new window.

""""""""""""""""""""""""""""""
" Tag list (ctags)
""""""""""""""""""""""""""""""
let Tlist_Ctags_Cmd = '/usr/bin/ctags'
let Tlist_Show_One_File = 1            "不同时显示多个文件的tag，只显示当前文件的
let Tlist_Exit_OnlyWindow = 1          "如果taglist窗口是最后一个窗口，则退出vim
let Tlist_Use_Right_Window = 0         "在右侧窗口中显示taglist窗口 
let Tlist_File_Fold_Auto_Close=1
let Tlist_Sort_Type='name'
let Tlist_Display_Prototype=0
nmap <silent> <leader>tl :call OpenTaglist()<cr>

""""""""""""""""""""""""""""""
" winManager setting
""""""""""""""""""""""""""""""
let g:winManagerWindowLayout = "FileExplorer"
let g:winManagerWidth = 30
let g:defaultExplorer =0 
"let g:miniBufExplorerMoreThanOne = 0
let g:AutoOpenWinManager = 1 
"nmap <C-W><C-F> :FirstExplorerWindow<cr>
"nmap <C-W><C-B> :BottomExplorerWindow<cr>
"nmap <silent> <leader>wm :call OpenWimmanger()<cr> 


"Theme
set t_Co=256 " 256 colors in terminal
let g:molokai_original = 1
colorscheme molokai 
"hi LineNr

"hi Normal                 guifg=white  guibg=black

"noremap <silent> <leader>m   :call <SID>CycleBuffer(1)<CR>:<BS>
"noremap <silent> <leader>n  :call <SID>CycleBuffer(0)<CR>:<BS>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 模式设置 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set smartindent "开启新行时使用智能自动缩进  
"autoindent（自动缩进，即每行的缩进值与上一行相等；使用noautoindent取消设置）  
set tabstop=8  "tabstop（制表符的宽度,只是把制表符的缩进量给改了，还是一个tab，所以跨平台时依旧会出现不一致）  
set softtabstop=4  "softtabstop（软制表符宽度，设置为非零数值后使用Tab键和Backspace时光标移动的格数等于该数值，但实际插入的字符仍受tabstop和expandtab控制）  
set shiftwidth=4   "shiftwidth（缩进的空格数）  
set expandtab  "expandtab（是否在缩进和遇到Tab键时使用空格替代，主要是保证跨平台时缩进的一致性；使用noexpandtab取消设置）  
set helplang=cn "设置帮助文档语言为中文
set cursorline              " 突出显示当前行
set ignorecase smartcase    " 搜索时忽略大小写，但在有一个或以上大写字母时仍保持对大小写敏感
" nnoremap <space> @=((foldclosed(line('.')) < 0) ? 'zc' : 'zo')<CR>  " 用空格键来开关折叠
set hidden 
set history=400 "Sets how many lines of history VIM har to remember
set autoread "Set to auto read when a file is changed from the outside
set nu "show line number
"set mouse=a "Have the mouse enabled all the time:
"set shell=/bin/sh
set hlsearch        " 高亮搜索
set history=400  " vim记住的历史操作的数量，默认的是20
set nocompatible
"set cmdheight=2
"set backspace=eol,start,indent
"set magic
"set showcmd         " 显示命令
" 恢复上次文件打开位置
set viminfo='10,\"100,:20,%,n~/.viminfo
au BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exe("norm '\"")|else|exe "norm $"|endif|endif
let g:debuggerPort=9900
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 状态栏
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set laststatus=2      " 总是显示状态栏
"highlight StatusLine cterm=bold ctermfg=black ctermbg=yellow
" 获取当前路径，将$HOME转化为~
function! CurDir()
    let curdir = substitute(getcwd(), $HOME, "~", "g")
    return curdir
endfunction
set statusline=[%n]\ %f%m%r%h\ \|\ \ pwd:\ %{CurDir()}\ \ \|%=\|\ %l,%c\ %p%%\ \|\ ascii=%b,hex=%b%{((&fenc==\"\")?\"\":\"\ \|\ \".&fenc)}\ \|\ %{$USER}\ @\ %{hostname()}\ 
"let g:Powerline_symbols = 'fancy'
"set fillchars+=stl:\ ,stlnc:\
"set encoding=utf-8

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" PHP set  
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"let php_folding =1
"autocmd FileType c,cpp,php  setl fdm=syntax | setl fen
"PHP Complete
autocmd FileType php set omnifunc=phpcomplete#CompletePHP
"Super Tab
let g:SuperTabRetainCompletionType=2
let g:SuperTabDefaultCompletionType="<C-X><C-O>"




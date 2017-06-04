set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" required! 
Plugin 'VundleVim/Vundle.vim'
Plugin 'fatih/vim-go'
Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/nerdtree'
Plugin 'tomasr/molokai'
Plugin 'Lokaltog/vim-powerline'
Plugin 'grep.vim'
Plugin 'L9'
Plugin 'FuzzyFinder'
Plugin 'myusuf3/numbers.vim'
Plugin 'nathanaelkane/vim-indent-guides'

" Brief help
" " :PluginList       - lists configured plugins
" " :PluginInstall    - installs plugins; append `!` to update or just
" :PluginUpdate
" " :PluginSearch foo - searches for foo; append `!` to refresh local cache
" " :PluginClean      - confirms removal of unused plugins; append `!` to
" auto-approve removal
" "
" " see :h vundle for more details or wiki for FAQ
" " Put your non-Plugin stuff after this line

"set rtp+=~/.vim/bundle/vundle/
"call vundle#rc()

"Bundle 'gmarik/vundle'
" My Bundles here:
"
" original repos on github
"Bundle 'AutoComplPop'
"Bundle 'scrooloose/nerdtree'
"Bundle 'tomasr/molokai'
"Bundle 'Lokaltog/vim-powerline'
"Bundle 'grep.vim'
"Bundle 'L9'
"Bundle 'FuzzyFinder'
"Bundle 'myusuf3/numbers.vim'
"Bundle 'nathanaelkane/vim-indent-guides'
"Bundle 'jsbeautify'
"Bundle 'desert256.vim'
"Bundle 'functionlist.vim'
"Bundle 'tpope/vim-fugitive'
"Bundle 'Lokaltog/vim-easymotion'
"Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
"Bundle 'tpope/vim-rails.git'

" vim-scripts repos
"Bundle 'L9'
"Bundle 'FuzzyFinder'
" non github repos
"Bundle 'git://git.wincent.com/command-t.git'
call vundle#end()
filetype plugin indent on     " required!
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Self Function 
" Author zhaohuan
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
function! QuitVimByAldge() 
    "if IsWinManagerVisible()
	"exe 'WMToggle' 
    "end
    "let winnum = bufwinnr(g:TagList_title)
    "if winnum == 1
        "exe 'TlistClose'
    "end
    "exe 'NERDTreeClose'
    exe 'CMiniBufExplorer' 
    call    s:WorkerCloseOtherWindow(100)
    exe 'q'
endfunction 

function!  CloseBufferByAldge()
    "if IsWinManagerVisible()
    "exe 'WMToggle' 
    "end
    exe 'bdelete' 
endfunction

function! OpenTaglist() 
    call    s:WorkerCloseOtherWindow(2)
    exe 'Tlist' 
endfunction 

function! OpenWimmanger()
    call    s:WorkerCloseOtherWindow(8)
    exe 'WMToggle'
endfunction 

function! OpenNerdTree()
    call    s:WorkerCloseOtherWindow(1)
    exe 'NERDTreeToggle'
endfunction 

function! OpenProject()
    call    s:WorkerCloseOtherWindow(1)
    "exe '<Plug>ToggleProject'
endfunction 

" 1 NerdTree
" 2 Taglist
" 3 Project
function! s:WorkerCloseOtherWindow(winNo)
    if a:winNo != 1
        if exists("t:NERDTreeBufName")
            let winnum = bufwinnr(t:NERDTreeBufName)
            if winnum == 1
                exe 'NERDTreeClose'
            end
        end
    end
    if a:winNo !=2 
        let winnum = bufwinnr(g:TagList_title)
            if winnum == 1
                exe 'TlistClose'
            end
    end
    if a:winNo !=3 
        if exists("g:proj_running")
            let winnum = bufwinnr(g:proj_running)
            if winnum == 1
                exe 'NERDTreeClose'
            end
        end
    end
    if a:winNo !=8 
        if IsWinManagerVisible()
	    exe 'WMToggle' 
        end
    end
    
endfunction 

fun! DeleteAllBuffersInWindow()
    let s:curWinNr = winnr()
    if winbufnr(s:curWinNr) == 1
        ret
    endif
    let s:curBufNr = bufnr("%")
    exe "bn"
    let s:nextBufNr = bufnr("%")
    while s:nextBufNr != s:curBufNr
        exe "bn"
        exe "bdel ".s:nextBufNr
        let s:nextBufNr = bufnr("%")
    endwhile
endfun

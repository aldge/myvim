set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" required! 
Bundle 'gmarik/vundle'

" My Bundles here:
"
" original repos on github
Bundle 'scrooloose/nerdtree'
Bundle 'tomasr/molokai'
Bundle 'Lokaltog/vim-powerline'
"Bundle 'tpope/vim-fugitive'
"Bundle 'Lokaltog/vim-easymotion'
"Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
"Bundle 'tpope/vim-rails.git'

" vim-scripts repos
"Bundle 'L9'
"Bundle 'FuzzyFinder'
" non github repos
"Bundle 'git://git.wincent.com/command-t.git'

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

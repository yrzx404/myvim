let mapleader=";"

" >>
" 文件类型侦测

" 开启文件类型侦测
filetype on
" 根据侦测到的不同类型加载对应的插件
filetype plugin on

" <<

" >>
" vim 自身（非插件）快捷键

" 定义快捷键到行首和行尾
nmap LF 0
nmap LE $

" 跳到文章开头和末尾
nmap HF gg
nmap HE G

" 设置Visual模式下非递归映射快捷键将选中文本块复制至系统剪贴板
vnoremap <Leader>y "+y
" 设置快捷键将系统剪贴板内容粘贴至vim
nmap <Leader>p "+p

" 定义快捷键关闭当前分割窗口
nmap <Leader>q :q<CR>
" 定义快捷键保存当前窗口内容
nmap <Leader>w :w<CR>
" 定义快捷键保存所有窗口内容并退出 vim
nmap <Leader>WQ :wa<CR>:q<CR>
" 不做任何保存，直接退出 vim
nmap <Leader>Q :qa!<CR>

" 设置Normal模式下非递归映射快捷键遍历子窗口
" 依次遍历
nnoremap nw <C-W><C-W>
" 跳转至右方的窗口
nnoremap <Leader>lw <C-W>l
" 跳转至方的窗口
nnoremap <Leader>hw <C-W>h
" 跳转至上方的子窗口
nnoremap <Leader>kw <C-W>k
" 跳转至下方的子窗口
nnoremap <Leader>jw <C-W>j

" 定义快捷键在结对符之间跳转
nmap <Leader>M %

" <<

" 让配置变更立即生效
autocmd BufWritePost $HOME/.vimrc source $HOME/.vimrc

" >>
" 其他

" 开启实时搜索功能
set incsearch

" 搜索时大小写不敏感
set ignorecase

" 关闭兼容模式
set nocompatible
set backspace=indent,eol,start

" vim 自身命令行模式智能补全
set wildmenu

" <<

" >>>>
" 插件安装

" vundle 环境设置
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
" vundle 管理的插件列表必须位于 vundle#begin() 和 vundle#end() 之间
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
" 编辑器主题
Plugin 'altercation/vim-colors-solarized'
Plugin 'tomasr/molokai'
Plugin 'vim-scripts/phd'
Plugin 'chriskempson/base16-vim'
" tmux交互
Plugin 'benmills/vimux'
" 美化状态栏
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
" 括号颜色
Plugin 'kien/rainbow_parentheses.vim'
" 代码缩进
Plugin 'nathanaelkane/vim-indent-guides'
" 代码格式化 pip install autopep8
Plugin 'Chiel92/vim-autoformat'
" 书签
Plugin 'kshenoy/vim-signature'
Plugin 'vim-scripts/BOOKMARKS--Mark-and-Highlight-Full-Lines'
" 基于标签的标识符列表
Plugin 'majutsushi/tagbar'
Plugin 'vim-scripts/indexer.tar.gz'
Plugin 'vim-scripts/DfrankUtil'
Plugin 'vim-scripts/vimprj'
" 全局查找
Plugin 'dyng/ctrlsf.vim'
" 快捷替换
Plugin 'terryma/vim-multiple-cursors'
" 快速注释
Plugin 'scrooloose/nerdcommenter'
" 绘制图像 :Distart，开始绘制，可用方向键绘制线条，空格键绘制或擦除字符；:Distop，停止绘制
Plugin 'vim-scripts/DrawIt'
" 代码模板自动补全
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
" 智能补全
Plugin 'Valloric/YouCompleteMe'
" 由接口快速生成实现类框架
Plugin 'derekwyatt/vim-protodef'
Plugin 'derekwyatt/vim-fswitch'
" 目录树
Plugin 'scrooloose/nerdtree'
" 多文档编辑
Plugin 'fholgado/minibufexpl.vim'

Plugin 'gcmt/wildfire.vim'
" 支持分支的撤销
Plugin 'sjl/gundo.vim'
" markdown插件
Plugin 'suan/vim-instant-markdown'
" git命令
Plugin 'tpope/vim-fugitive'

Plugin 'ekalinin/Dockerfile.vim', {'for' : 'Dockerfile'}
Plugin 'elzr/vim-json', {'for' : 'json'}
Plugin 'fatih/vim-go'
Plugin 'fatih/vim-nginx' , {'for' : 'nginx'}
Plugin 'fatih/vim-hclfmt'
Plugin 'pangloss/vim-javascript'
Plugin 'jelera/vim-javascript-syntax'

" 插件列表结束
call vundle#end()
filetype plugin indent on
" <<<<

" 配色方案
set t_Co=256
let g:rehash256 = 1
let g:molokai_original = 1

set background=dark
"colorscheme solarized
colorscheme molokai
"colorscheme phd


" >>
" 营造专注气氛

" 禁止光标闪烁
set gcr=a:block-blinkon0

" 禁止显示滚动条
set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R

" 禁止显示菜单和工具条
set guioptions-=m
set guioptions-=T

" 将外部命令 wmctrl 控制窗口最大化的命令行参数封装成一个 vim 的函数
fun! ToggleFullscreen()
	call system("wmctrl -ir " . v:windowid . " -b toggle,fullscreen")
endf
" 全屏开/关快捷键
map <silent> <F11> :call ToggleFullscreen()<CR>
"" 启动 vim 时自动全屏
"autocmd VimEnter * call ToggleFullscreen()

" <<

" >>
" 辅助信息

" 总是显示状态栏
set laststatus=2

" 显示光标当前位置
set ruler

" 开启行号显示
set number

" 高亮显示当前行/列
set cursorline
set cursorcolumn

" 高亮显示搜索结果
set hlsearch

" <<

" >>
" 其他美化

" 设置 gvim 显示字体
set guifont=YaHei\ Consolas\ Hybrid\ 12

" 禁止折行
set nowrap

" <<

" >>
" 设置状态栏主题风格
let g:airline_powerline_fonts = 1
" 是否启用顶部tabline
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme="dark"
let s:modes = {
      \ 'n': 'NORMAL',
      \ 'i': 'INSERT',
      \ 'R': 'REPLACE',
      \ 'v': 'VISUAL',
      \ 'V': 'V-LINE',
      \ "\<C-v>": 'V-BLOCK',
      \ 'c': 'COMMAND',
      \ 's': 'SELECT',
      \ 'S': 'S-LINE',
      \ "\<C-s>": 'S-BLOCK',
      \ 't': 'TERMINAL'
      \}

let s:prev_mode = ""
function! StatusLineMode()
  let cur_mode = get(s:modes, mode(), '')

  " do not update higlight if the mode is the same
  if cur_mode == s:prev_mode
    return cur_mode
  endif

  if cur_mode == "NORMAL"
    exe 'hi! StatusLine ctermfg=236'
    exe 'hi! myModeColor cterm=bold ctermbg=148 ctermfg=22'
  elseif cur_mode == "INSERT"
    exe 'hi! myModeColor cterm=bold ctermbg=23 ctermfg=231'
  elseif cur_mode == "VISUAL" || cur_mode == "V-LINE" || cur_mode == "V_BLOCK"
    exe 'hi! StatusLine ctermfg=236'
    exe 'hi! myModeColor cterm=bold ctermbg=208 ctermfg=88'
  endif

  let s:prev_mode = cur_mode
  return cur_mode
endfunction

function! StatusLineFiletype()
  return winwidth(0) > 70 ? (strlen(&filetype) ? &filetype : 'no ft') : ''
endfunction

function! StatusLinePercent()
  return (100 * line('.') / line('$')) . '%'
endfunction

function! StatusLineLeftInfo()
 let branch = fugitive#head()
 let filename = '' != expand('%:t') ? expand('%:t') : '[No Name]'
 if branch !=# ''
   return printf("%s | %s", branch, filename)
 endif
 return filename
endfunction

exe 'hi! myInfoColor ctermbg=240 ctermfg=252'
set statusline=
set statusline+=%#myModeColor#
set statusline+=%{StatusLineMode()}
set statusline+=%*
set statusline+=%#myInfoColor#
set statusline+=\ %{StatusLineLeftInfo()}
set statusline+=\ %*
set statusline+=%#goStatuslineColor#
set statusline+=%{go#statusline#Show()}
set statusline+=%*
set statusline+=%=
set statusline+=%#myInfoColor#
set statusline+=\ %{StatusLineFiletype()}\ %{StatusLinePercent()}\ %l:%v
set statusline+=\ %*
set statusline+=\ %{FugitiveStatusline()}
set statusline+=\ %*
" <<

" >>
" 语法分析

" 开启语法高亮功能
syntax enable
" 允许用指定语法高亮配色方案替换默认方案
syntax on

" <<

" >>
" 缩进

" 自适应不同语言的智能缩进
filetype indent on

" 将制表符扩展为空格
set expandtab
" 设置编辑时制表符占用空格数
set tabstop=4
" 设置格式化时制表符占用空格数
set shiftwidth=4
" 让 vim 把连续数量的空格视为一个制表符
set softtabstop=4

" 缩进可视化插件 Indent Guides
" 随 vim 自启动
let g:indent_guides_enable_on_vim_startup=1
" 从第二层开始可视化显示缩进
let g:indent_guides_start_level=2
" 色块宽度
let g:indent_guides_guide_size=1
" 快捷键 i 开/关缩进可视化
nmap <silent> <Leader>i <Plug>IndentGuidesToggle

" <<

" >>
" 代码折叠

" 基于缩进或语法进行代码折叠
"set foldmethod=indent
set foldmethod=syntax
" 启动 vim 时关闭折叠代码
set nofoldenable

" <<

" >>
" 接口与实现快速切换

" *.cpp 和 *.h 间切换
nmap <silent> <Leader>sw :FSHere<cr>

" <<

" >>
" 代码收藏

" 自定义 vim-signature 快捷键
let g:SignatureMap = {
        \ 'Leader'             :  "m",
        \ 'PlaceNextMark'      :  "m,",
        \ 'ToggleMarkAtLine'   :  "m.",
        \ 'PurgeMarksAtLine'   :  "m-",
        \ 'DeleteMark'         :  "dm",
        \ 'PurgeMarks'         :  "mda",
        \ 'PurgeMarkers'       :  "m<BS>",
        \ 'GotoNextLineAlpha'  :  "']",
        \ 'GotoPrevLineAlpha'  :  "'[",
        \ 'GotoNextSpotAlpha'  :  "`]",
        \ 'GotoPrevSpotAlpha'  :  "`[",
        \ 'GotoNextLineByPos'  :  "]'",
        \ 'GotoPrevLineByPos'  :  "['",
        \ 'GotoNextSpotByPos'  :  "mn",
        \ 'GotoPrevSpotByPos'  :  "mp",
        \ 'GotoNextMarker'     :  "[+",
        \ 'GotoPrevMarker'     :  "[-",
        \ 'GotoNextMarkerAny'  :  "]=",
        \ 'GotoPrevMarkerAny'  :  "[=",
        \ 'ListLocalMarks'     :  "ms",
        \ 'ListLocalMarkers'   :  "m?"
        \ }

" <<

" >>
" 标签列表

" 设置 tagbar 子窗口的位置出现在主编辑区的左边
let tagbar_left=1
" 设置显示／隐藏标签列表子窗口的快捷键。速记：identifier list by tag
nnoremap <Leader>ilt :TagbarToggle<CR>
" 设置标签子窗口的宽度
let tagbar_width=32
" tagbar 子窗口中不显示冗余帮助信息
let g:tagbar_compact=1
" 设置 ctags 对哪些代码标识符生成标签
let g:tagbar_type_cpp = {
     \ 'ctagstype' : 'c++',
     \ 'kinds'     : [
         \ 'c:classes:0:1',
         \ 'd:macros:0:1',
         \ 'e:enumerators:0:0', 
         \ 'f:functions:0:1',
         \ 'g:enumeration:0:1',
         \ 'l:local:0:1',
         \ 'm:members:0:1',
         \ 'n:namespaces:0:1',
         \ 'p:functions_prototypes:0:1',
         \ 's:structs:0:1',
         \ 't:typedefs:0:1',
         \ 'u:unions:0:1',
         \ 'v:global:0:1',
         \ 'x:external:0:1'
     \ ],
     \ 'sro'        : '::',
     \ 'kind2scope' : {
         \ 'g' : 'enum',
         \ 'n' : 'namespace',
         \ 'c' : 'class',
         \ 's' : 'struct',
         \ 'u' : 'union'
     \ },
     \ 'scope2kind' : {
         \ 'enum'      : 'g',
         \ 'namespace' : 'n',
         \ 'class'     : 'c',
         \ 'struct'    : 's',
         \ 'union'     : 'u'
     \ }
\ }

" <<

" >>
" 代码导航
 
" 基于标签的代码导航

" 设置插件 indexer 调用 ctags 的参数
" 默认 --c++-kinds=+p+l，重新设置为 --c++-kinds=+l+p+x+c+d+e+f+g+m+n+s+t+u+v
" 默认 --fields=+iaS 不满足 YCM 要求，需改为 --fields=+iaSl
let g:indexer_ctagsCommandLineOptions="--c++-kinds=+l+p+x+c+d+e+f+g+m+n+s+t+u+v --fields=+iaSl --extra=+q"

" 正向遍历同名标签
nmap <Leader>tn :tnext<CR>
" 反向遍历同名标签
nmap <Leader>tp :tprevious<CR>

" 基于语义的代码导航

nnoremap <leader>jc :YcmCompleter GoToDeclaration<CR>
" 只能是 #include 或已打开的文件
nnoremap <leader>jd :YcmCompleter GoToDefinition<CR>

" <<

" >>
" 代码格式化
nnoremap <leader>f :Autoformat<CR>
let g:autoformat_autoindent = 0
let g:autoformat_retab = 0
let g:autoformat_remove_trailing_spaces = 0
" <<

" >>
" 查找

" 使用 ctrlsf.vim 插件在工程内全局查找光标所在关键字，设置快捷键。快捷键速记法：search in project
nnoremap <Leader>sp :CtrlSF<CR>

" <<

" >>
" 内容替换

" 快捷替换
let g:multi_cursor_next_key='<S-n>'
let g:multi_cursor_prev_key='<S-p>'
let g:multi_cursor_skip_key='<S-x>'
let g:multi_cursor_quit_key='<Esc>'

" 精准替换
" 替换函数。参数说明：
" confirm：是否替换前逐一确认
" wholeword：是否整词匹配
" replace：被替换字符串
function! Replace(confirm, wholeword, replace)
    wa
    let flag = ''
    if a:confirm
        let flag .= 'gec'
    else
        let flag .= 'ge'
    endif
    let search = ''
    if a:wholeword
        let search .= '\<' . escape(expand('<cword>'), '/\.*$^~[') . '\>'
    else
        let search .= expand('<cword>')
    endif
    let replace = escape(a:replace, '/\&~')
    execute 'argdo %s/' . search . '/' . replace . '/' . flag . '| update'
endfunction
" 不确认、非整词
nnoremap <Leader>R :call Replace(0, 0, input('Replace '.expand('<cword>').' with: '))<CR>
" 不确认、整词
nnoremap <Leader>rw :call Replace(0, 1, input('Replace '.expand('<cword>').' with: '))<CR>
" 确认、非整词
nnoremap <Leader>rc :call Replace(1, 0, input('Replace '.expand('<cword>').' with: '))<CR>
" 确认、整词
nnoremap <Leader>rcw :call Replace(1, 1, input('Replace '.expand('<cword>').' with: '))<CR>
nnoremap <Leader>rwc :call Replace(1, 1, input('Replace '.expand('<cword>').' with: '))<CR>

" <<

" 模板补全
" UltiSnips 的 tab 键与 YCM 冲突，重新设定
let g:UltiSnipsSnippetDirectories=["UltiSnips","mysnippets"]
let g:UltiSnipsExpandTrigger="<leader><tab>"
let g:UltiSnipsJumpForwardTrigger="<leader><tab>"
let g:UltiSnipsJumpBackwardTrigger="<leader><s-tab>"

" >>
" YCM 补全

" YCM 补全菜单配色
" 菜单
highlight Pmenu ctermfg=2 ctermbg=3 guifg=#005f87 guibg=#EEE8D5
" 选中项
highlight PmenuSel ctermfg=2 ctermbg=3 guifg=#AFD700 guibg=#106900

" 补全功能在注释中同样有效
let g:ycm_complete_in_comments=1

" 允许 vim 加载 .ycm_extra_conf.py 文件，不再提示
let g:ycm_confirm_extra_conf=0

" 开启 YCM 标签补全引擎
let g:ycm_collect_identifiers_from_tags_files=0

" YCM 集成 OmniCppComplete 补全引擎，设置其快捷键
inoremap <leader>; <C-x><C-o>

" 补全内容不以分割子窗口形式出现，只显示补全列表
set completeopt-=preview

" 从第一个键入字符就开始罗列匹配项
let g:ycm_min_num_of_chars_for_completion=1

" 禁止缓存匹配项，每次都重新生成匹配项
let g:ycm_cache_omnifunc=0

" 语法关键字补全
let g:ycm_seed_identifiers_with_syntax=1

" <<
 
" >>
" 由接口快速生成实现框架

" 成员函数的实现顺序与声明顺序一致
let g:disable_protodef_sorting=1

" <<

" >>
" 库信息参考
 
" 启用:Man命令查看各类man信息
source $VIMRUNTIME/ftplugin/man.vim

" 定义:Man命令查看各类man信息的快捷键
nmap <Leader>man :Man 3 <cword><CR>

" <<

" >>
" 工程文件浏览

" 使用 NERDTree 插件查看工程文件。设置快捷键，速记：file list
nmap <Leader>fl :NERDTreeToggle<CR>
" 设置 NERDTree 子窗口宽度
let NERDTreeWinSize=22
" 设置 NERDTree 子窗口位置
let NERDTreeWinPos="right"
" 显示隐藏文件
let NERDTreeShowHidden=1
" NERDTree 子窗口中不显示冗余帮助信息
let NERDTreeMinimalUI=1
" 删除文件时自动删除文件对应 buffer
let NERDTreeAutoDeleteBuffer=1

" <<

" >>
" 多文档编辑
 
" 显示/隐藏 MiniBufExplorer 窗口
map <Leader>bl :MBEToggle<cr>

" buffer 切换快捷键
map <C-Tab> :MBEbn<cr>
map <C-S-Tab> :MBEbp<cr>

" <<


" >>
" 环境恢复

" 设置环境保存项
set sessionoptions="blank,globals,localoptions,tabpages,sesdir,folds,help,options,resize,winpos,winsize"

" 保存 undo 历史。必须先行创建 .undo_history/
if has('persistent_undo')
    set undodir=~/.undo_history/
    set undofile
endif

" 保存快捷键
"map <leader>ss :mksession! my.vim<cr> :wviminfo! my.viminfo<cr>
map <leader>ss :mksession! my.vim<cr>

" 恢复快捷键
"map <leader>rs :source my.vim<cr> :rviminfo my.viminfo<cr>
map <leader>rs :source my.vim<cr>

" <<
 
" 设置快捷键实现一键编译及运行
map <C-F5> :call CompileRun()<CR>

func! CompileRun()
    exec "w" 
    if &filetype == 'c' 
        exec '!g++ % -o %<'
        exec '!time ./%<'
    elseif &filetype == 'cpp'
        exec '!g++ % -o %<'
        exec '!time ./%<'
    elseif &filetype == 'python'
        exec '!time python %'
    elseif &filetype == 'lua'
        exec '!time luajit %'
    elseif &filetype == 'sh'
        :!time bash %
    endif                                                                              
endfunc 

" >>
" 快速选中结对符内的文本
 
" 快捷键
map <SPACE> <Plug>(wildfire-fuel)
vmap <S-SPACE> <Plug>(wildfire-water)

" 适用于哪些结对符
let g:wildfire_objects = ["i'", 'i"', "i)", "i]", "i}", "i>", "ip"]

" <<

" 调用 gundo 树
if has('python3')
    let g:gundo_prefer_python3 = 1
endif
nnoremap <Leader>ud :GundoToggle<CR>

" 新增文件自动生成注释
autocmd BufNewFile *.[ch],*.hpp,*.cpp,Makefile,*.mk,*.sh,*.lua,*.py exec ":call SetFileHeader()" 

" 加入注释 
func! SetComment()
	call setline(1,"/*================================================================") 
    	call append(line("."),   "*   Copyright (C) ".strftime("%Y").". All rights reserved.")
	call append(line(".")+1, "*   ") 
	call append(line(".")+2, "*   FileName：".expand("%:t")) 
	call append(line(".")+3, "*   Author  ：yrzx404")
	call append(line(".")+4, "*   Date    ：".strftime("%Y/%m/%d/")) 
	call append(line(".")+5, "*   Desc    ：") 
	call append(line(".")+6, "*")
	call append(line(".")+7, "================================================================*/") 
	call append(line(".")+8, "")
	call append(line(".")+9, "")
endfunc

" 加入shell,Makefile注释
func! SetComment_Sh()
	call setline(3, "#================================================================") 
	call setline(4, "#   Copyright (C) ".strftime("%Y").". All rights reserved.")
	call setline(5, "#   ") 
	call setline(6, "#   FileName：".expand("%:t")) 
	call setline(7, "#   Author  ：yrzx404")
	call setline(8, "#   Date    ：".strftime("%Y/%m/%d/")) 
	call setline(9, "#   Desc    ：") 
	call setline(10, "#")
	call setline(11, "#================================================================")
	call setline(12, "")
	call setline(13, "")
endfunc

" 加入lua注释
func! SetComment_Lua()
	call setline(1, "-----------------------------------------------------------------") 
	call setline(2, "--   Copyright (C) ".strftime("%Y").". All rights reserved.")
	call setline(3, "--   ") 
	call setline(4, "--   FileName：".expand("%:t")) 
	call setline(5, "--   Author  ：yrzx404")
	call setline(6, "--   Date    ：".strftime("%Y/%m/%d/")) 
	call setline(7, "--   Desc    ：") 
	call setline(8, "--")
	call setline(9, "-----------------------------------------------------------------")
	call setline(10, "")
	call setline(11, "")
endfunc 

" 加入python注释
func! SetComment_Python()
	call setline(3, "#================================================================") 
	call setline(4, "#   Copyright (C) ".strftime("%Y").". All rights reserved.")
	call setline(5, "#   ") 
	call setline(6, "#   FileName：".expand("%:t")) 
	call setline(7, "#   Author  ：yrzx404")
	call setline(8, "#   Date    ：".strftime("%Y/%m/%d/")) 
	call setline(9, "#   Desc    ：") 
	call setline(10, "#")
	call setline(11, "#================================================================")
	call setline(12, "")
	call setline(13, "")
endfunc 



" 自动插入文件头 
func! SetFileHeader()
	if &filetype == 'make'
		call setline(1,"") 
		call setline(2,"")
		call SetComment_Sh()
 
	elseif &filetype == 'sh'
		call setline(1,"#!/system/bin/sh") 
		call setline(2,"")
		call SetComment_Sh()

	elseif &filetype == 'lua'
		call SetComment_Lua()

    elseif &filetype == 'python'
		call setline(1,"#!/usr/bin/env python")
        call setline(2,"#encoding:utf-8")
		call SetComment_Python()

	else
	     call SetComment()
	     if expand("%:e") == 'hpp'
              call append(line(".")+10, "#ifndef _".toupper(expand("%:t:r"))."_H") 
              call append(line(".")+11, "#define _".toupper(expand("%:t:r"))."_H") 
              call append(line(".")+12, "#ifdef __cplusplus") 
              call append(line(".")+13, "extern \"C\"") 
              call append(line(".")+14, "{") 
              call append(line(".")+15, "#endif") 
              call append(line(".")+16, "") 
              call append(line(".")+17, "#ifdef __cplusplus") 
              call append(line(".")+18, "}") 
              call append(line(".")+19, "#endif") 
              call append(line(".")+20, "#endif //".toupper(expand("%:t:r"))."_H") 
     
	     elseif expand("%:e") == 'h'
            call append(line(".")+10, "#pragma once") 
	     elseif &filetype == 'c'
            call append(line(".")+10,"#include \"".expand("%:t:r").".h\"") 
	     elseif &filetype == 'cpp'
            call append(line(".")+10, "#include \"".expand("%:t:r").".h\"") 
	     endif
	endif
endfunc

" 定位到文件末尾
autocmd BufNewFile * normal G

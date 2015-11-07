set nocompatible
source $VIMRUNTIME/vimrc_example.vim
behave mswin
" color murphy
" color koehler
" color desert
" color twilight
 " color freya
 " color lucius
 " color elflord
 " color jellybeans
 color hybrid

" highlight OverLength ctermbg=red ctermfg=white guibg=#592929
" match OverLength /\%81v.\+/
" set columns=80
" let colorcolumn=join(range(81,999),",")
set colorcolumn=80,100
if exists('+colorcolumn')
  " let colorcolumn=join(range(81,999),",")
  let colorcolumn="80,".join(range(100,999),",")
else
  au BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%>80v.\+', -1)
endif

set mouse=v
set keymodel=
set nobackup
set go-=tT
set whichwrap=[,]
set tags+=~/cpp_src/tags,~/tags,~/.systags,./tags,../tags,../../tags,../../../tags,../../../../tags,../../../../../tags,../../../../../../tags
set fileencodings=utf-8,gbk,default,latin1 fileformats=unix,dos,mac
set encoding=utf-8
set fileencoding=utf-8 nobomb fileformat=unix

set ruler

filetype plugin on
filetype on
set backspace=2
set tabstop=2
set shiftwidth=2
set smarttab
set number
set wrap
set linebreak
syn on
set smartindent autoindent
set noet ts=2 sw=2
set ignorecase smartcase
set modeline modelines=10
set path+=.,../*,../*/*,../../*/*,../../../*/*,../../../../*/*,../../../../../*/*,../../../../../../*/*
set whichwrap=b,s,<,>,[,] "use your arrow keys to move around
set backspace=indent,eol,start "deletion convention
set ambiwidth=double "for special wide characters
set hlsearch "highlight search
set incsearch "increment search
set lbr "don't wrap line in a word
set fo+=mB "wrap line between wide characters
set wildmenu "command completion's menu
set selection=inclusive
" set textwidth=80
set cin "indent for C
set cino=:0g0t0(susj1 "options for C indent
set showmatch "show (){}<>[] match
set fdl=10000

map <F5> :!make<CR>
map <F4> :shell<CR>
map <F3> :Tlist<CR>
map <F8> :NERDTreeToggle<CR>

set nofoldenable
" set foldenable              " 开始折叠
set foldmethod=syntax       " 设置语法折叠
" set foldmethod=indent       " 设置语法折叠
set foldcolumn=0            " 设置折叠区域的宽度
setlocal foldlevel=2        " 设置折叠层数为
nnoremap <space> @=((foldclosed(line('.')) < 0) ? 'zc' : 'zo')<CR>
" set foldmethod=manual



"set syntax=cpp.doxygen
"doxygen toolkit
let loaded_DoxygenToolkit = 1
let g:DoxygenToolkit_briefTag_pre="@Synopsis: "
let g:DoxygenToolkit_paramTag_pre="@Param: "
let g:DoxygenToolkit_returnTag="@Returns: "
" let g:DoxygenToolkit_docHeader="============================================="
" let g:DoxygenToolkit_blockHeader="------------------------------------------"
" let g:DoxygenToolkit_blockFooter="--------------------------------------------"
" let g:DoxygenToolkit_docFooter="============================================="
" let g:DoxygenToolkit_authorName="MichaelPei"
"let g:DoxygenToolkit_licenseTag="My own license"
"let g:DoxygenToolkit_licenseTag="GPL 2.0"
let g:DoxygenToolkit_authorName="michael"
let g:DoxygenToolkit_briefTag_funcName="yes"
" map fg : Dox<cr>
" map <leader>da :DoxAuthor<CR>
" map <leader>df :Dox<CR>
" map <leader>db :DoxBlock<CR>
" map <leader>dc a /*  */<LEFT><LEFT><LEFT>
" let s:licenseTag ="@Copyright(C)\t\t"
" let s:licenseTag = s:licenseTag ."@MY OWN LICENSE\t\t"
" let s:licenseTag = s:licenseTag ."@All right reserved\t\t"
" let g:DoxygenToolkit_licenseTag = s:licenseTag
" let g:DoxygenToolkit_briefTag_funcName="yes"
" let g:doxygen_enhanced_color=1
" let g:DxygenToolkit_startCommentTag = "/**"
" let g:DoxygenToolkit_startCommentBlock = "/*"
" let g:DoxygenToolkit_interCommentTag = "**"
" let g:DoxygenToolkit_interCommentBlock = "*"
" let g:DoxygenToolkit_endCommentTag = "**/"
" let g:DoxygenToolkit_endCommentBlock = "*/"


let Tlist_Ctags_Cmd = '/usr/local/bin/ctags'
let Tlist_Use_LEFT_Window=1
let Tlist_File_Fold_Auto_Clost=1
let Tlist_Show_One_File=1
let Tlist_GainFocus_On_ToggleOpen=1
let Tlist_Exit_OnlyWindow=1
let g:winManagerWindowLayout='FileExplorer|TagList'
nmap wm :WMToggle<cr>

let Tlist_Process_File_Always=0
let Tlist_Inc_Winwidth=0

let Tlist_Auto_Highlist_Tag=1
let Tlist_Auto_Open=0
let Tlist_Auto_Update=1
let Tlist_Sort_Type='name'

set completeopt=menu
set nocp
filetype plugin on
filetype indent on
set tags+=/usr/local/share/tags/tags
set tags+=~/.vim/systags
set tags+=~/.vim/cpp
au BufWritePost *.c,*.cpp,*.cc,*.h !/usr/local/bin/ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .
let OmniCpp_NamespaceSearch = 1   " 0 ,  1 or 2
let OmniCpp_DisplayMode = 1
let OmniCpp_ShowScopeInAbbr = 0
let OmniCpp_ShowPrototypeInAbbr = 1
let OmniCpp_ShowAccess = 1
let OmniCpp_MayCompleteDot = 1
let OmniCpp_MayCompleteArrow = 1
let OmniCpp_MayCompleteScope = 1

let g:AutoComplPop_NotEnableAtStartup = 1
let g:NeoComplCache_EnableAtStartup = 1
let g:NeoComplCache_SmartCase = 1
let g:NeoComplCache_TagsAutoUpdate = 1
let g:NeoComplCache_EnableInfo = 1
let g:NeoComplCache_EnableCamelCaseCompletion = 1
let g:NeoComplCache_MinSyntaxLength = 3
let g:NeoComplCache_EnableSkipCompletion = 1
let g:NeoComplCache_SkipInputTime = '0.5'
let g:NeoComplCache_SnippetsDir = $VIMFILES.'/snippets'
" <TAB> completion.
inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"
" " snippets expand key
imap <silent> <C-e> <Plug>(neocomplcache_snippets_expand)
smap <silent> <C-e> <Plug>(neocomplcache_snippets_expand)

"-------python auto complete---------
filetype plugin on
set ofu=syntaxcomplete#Complete
autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd BufNewFile *.py 0r ~/.vim/template/python.tp
autocmd BufNewFile *.php 0r ~/.vim/template/php.tp
autocmd BufNewFile *.sh 0r ~/.vim/template/shell.tp
if exists('*strftime')
    au BufNewFile *.php :call append(5, '* Created: 		'.strftime('%a, %d %b %Y %T %z'))
endif
if exists('*strftime')
    au BufNewFile *.py :call append(3, '# Created: '.strftime('%a, %d %b %Y %T %z'))
endif
autocmd FileType python runtime! autoload/pythoncomplete.vim


"-----------------------------------------------------------------
"plugin - NERD_commenter.vim   注释代码用的，
"[count],cc 光标以下count行逐行添加注释(7,cc)
"[count],cu 光标以下count行逐行取消注释(7,cu)
"[count],cm 光标以下count行尝试添加块注释(7,cm)
" cA 在行尾插入 /* */,并且进入插入模式。 这个命令方便写注释。
" 注：count参数可选，无则默认为选中行或当前行
" -----------------------------------------------------------------
let NERDSpaceDelims=1       " 让注释符与语句之间留一个空格
let g:NeoComplCache_EnableAtStartup = 1

let NERDCompactSexyComs=1   " 多行注释时样子更好看
map <c-h> ,c<space>



syn match   cFunction "\<[a-zA-Z_][a-zA-Z_0-9]*\>[^()]*)("me=e-2
syn match   cFunction "\<[a-zA-Z_][a-zA-Z_0-9]*\>\s*("me=e-1
hi cFunction        gui=NONE guifg=#B5A1FF



" C math operators
syn match       cMathOperator     display "[-+\*/%=]"
" C pointer operators
syn match       cPointerOperator  display "->\|\."
" C logical   operators - boolean results
syn match       cLogicalOperator  display "[!<>]=\="
syn match       cLogicalOperator  display "=="
" C bit operators
syn match       cBinaryOperator   display "\(&\||\|\^\|<<\|>>\)=\="
syn match       cBinaryOperator   display "\~"
syn match       cBinaryOperatorError display "\~="
" More C logical operators - highlight in preference to binary
syn match       cLogicalOperator  display "&&\|||"
syn match       cLogicalOperatorError display "\(&&\|||\)="


hi cMathOperator            guifg=#3EFFE2
hi cPointerOperator         guifg=#3EFFE2
hi cLogicalOperator         guifg=#3EFFE2
hi cBinaryOperator          guifg=#3EFFE2
hi cBinaryOperatorError     guifg=#3EFFE2
hi cLogicalOperator         guifg=#3EFFE2
hi cLogicalOperatorError    guifg=#3EFFE2



if(has("win32") || has("win95") || has("win64") || has("win16"))
	let g:vimrc_iswindows=1
else
	let g:vimrc_iswindows=0
endif
autocmd BufEnter * lcd %:p:h
map <F12> :call Do_CsTag()<CR>
nmap <C-@>s :cs find s <C-R>=expand("<cword>")<CR><CR>:copen<CR>
nmap <C-@>g :cs find g <C-R>=expand("<cword>")<CR><CR>
nmap <C-@>c :cs find c <C-R>=expand("<cword>")<CR><CR>:copen<CR>
nmap <C-@>t :cs find t <C-R>=expand("<cword>")<CR><CR>:copen<CR>
nmap <C-@>e :cs find e <C-R>=expand("<cword>")<CR><CR>:copen<CR>
nmap <C-@>f :cs find f <C-R>=expand("<cfile>")<CR><CR>:copen<CR>
nmap <C-@>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>:copen<CR>
nmap <C-@>d :cs find d <C-R>=expand("<cword>")<CR><CR>:copen<CR>
function Do_CsTag()
	let dir = getcwd()
	if filereadable("tags")
		if(g:iswindows==1)
			let tagsdeleted=delete(dir."\\"."tags")
		else
			let tagsdeleted=delete("./"."tags")
		endif
		if(tagsdeleted!=0)
			echohl WarningMsg | echo "Fail to do tags! I cannot delete the tags" | echohl None
			return
		endif
	endif
	if has("cscope")
		silent! execute "cs kill -1"
	endif
	if filereadable("cscope.files")
		if(g:iswindows==1)
			let csfilesdeleted=delete(dir."\\"."cscope.files")
		else
			let csfilesdeleted=delete("./"."cscope.files")
		endif
		if(csfilesdeleted!=0)
			echohl WarningMsg | echo "Fail to do cscope! I cannot delete the cscope.files" | echohl None
			return
		endif
	endif
	if filereadable("cscope.out")
		if(g:iswindows==1)
			let csoutdeleted=delete(dir."\\"."cscope.out")
		else
			let csoutdeleted=delete("./"."cscope.out")
		endif
		if(csoutdeleted!=0)
			echohl WarningMsg | echo "Fail to do cscope! I cannot delete the cscope.out" | echohl None
			return
		endif
	endif
	if(executable('ctags'))
		"silent! execute "!/usr/local/bin/ctags -R --c-types=+p --fields=+S *"
		"silent! execute "!/usr/local/bin/ctags -R --c++-kinds=+p --fields=+iaS --extra=+q ."
	endif
	if(executable('cscope') && has("cscope") )
		if(g:iswindows!=1)
			silent! execute "!find . -name '*.h' -o -name '*.c' -o -name '*.cpp' -o -name '*.java' -o -name '*.cs' > cscope.files"
		else
			silent! execute "!dir /s/b *.c,*.cpp,*.h,*.java,*.cs >> cscope.files"
		endif
		silent! execute "!cscope -b"
		execute "normal :"
		if filereadable("cscope.out")
			execute "cs add cscope.out"
		endif
	endif
endfunction


let g:lua_compiler_name = '/usr/local/bin/luac'
let b:lua_compiler_name = '/usr/local/bin/lualint'
let g:lua_check_syntax = 0
let g:lua_check_globals = 0
let g:lua_complete_omni = 1
let g:lua_omni_blacklist = ['pl\.strict', 'lgi\..']
let g:lua_define_completefunc = 0
let g:lua_define_omnifunc = 0

augroup filetype
    autocmd! BufRead,BufNewFile BUILD set filetype=blade
augroup end

set expandtab

" for command mode
nnoremap <S-Tab> <
nnoremap <Tab> >

noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

set incsearch
set laststatus=2
set cursorline
set clipboard=unnamed

set scrolloff=10

autocmd BufWritePre <buffer> StripWhitespace

execute pathogen#infect()

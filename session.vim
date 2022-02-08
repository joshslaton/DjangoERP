let SessionLoad = 1
if &cp | set nocp | endif
nnoremap  :NERDTreeFocus
nnoremap  :NERDTreeToggle
let s:cpo_save=&cpo
set cpo&vim
vmap gx <Plug>NetrwBrowseXVis
nmap gx <Plug>NetrwBrowseX
vnoremap <silent> <Plug>NetrwBrowseXVis :call netrw#BrowseXVis()
nnoremap <silent> <Plug>NetrwBrowseX :call netrw#BrowseX(expand((exists("g:netrw_gx")? g:netrw_gx : '<cfile>')),netrw#CheckIfRemote())
let &cpo=s:cpo_save
unlet s:cpo_save
set background=dark
set backspace=indent,eol,start
set expandtab
set fileencodings=ucs-bom,utf-8,default,latin1
set helplang=en
set ignorecase
set incsearch
set laststatus=2
set ruler
set runtimepath=~/.vim,~/.vim/bundle/Vundle.vim,~/.vim/bundle/vim-hardtime,~/.vim/bundle/nerdtree,~/.vim/bundle/nerdtree-buffer-ops,~/.vim/bundle/vim-powerline,~/.vim/bundle/vim-monokai,/var/lib/vim/addons,/usr/share/vim/vimfiles,/usr/share/vim/vim80,/usr/share/vim/vimfiles/after,/var/lib/vim/addons/after,~/.vim/after,~/.vim/bundle/Vundle.vim,~/.vim/bundle/Vundle.vim/after,~/.vim/bundle/vim-hardtime/after,~/.vim/bundle/nerdtree/after,~/.vim/bundle/nerdtree-buffer-ops/after,~/.vim/bundle/vim-powerline/after,~/.vim/bundle/vim-monokai/after
set scrolloff=8
set shiftwidth=4
set smartindent
set softtabstop=4
set suffixes=.bak,~,.swp,.o,.info,.aux,.log,.dvi,.bbl,.blg,.brf,.cb,.ind,.idx,.ilg,.inx,.out,.toc
set noswapfile
set tabstop=4
set textwidth=79
set wildignore=*.pyc
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~/DjangoERP
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +1 static/css/default.css
badd +2 templates/base.html
badd +1 templates/index.html
badd +0 DjangoERP/views.py
badd +10 templates/header.html
argglobal
silent! argdel *
edit DjangoERP/views.py
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd _ | wincmd |
split
1wincmd k
wincmd w
wincmd w
set nosplitbelow
set nosplitright
wincmd t
set winminheight=1 winheight=1 winminwidth=1 winwidth=1
exe '1resize ' . ((&lines * 18 + 19) / 39)
exe 'vert 1resize ' . ((&columns * 74 + 74) / 149)
exe '2resize ' . ((&lines * 18 + 19) / 39)
exe 'vert 2resize ' . ((&columns * 74 + 74) / 149)
exe 'vert 3resize ' . ((&columns * 74 + 74) / 149)
argglobal
let s:cpo_save=&cpo
set cpo&vim
inoremap <buffer> <silent> <expr> <Right> TryKey('<Right>') ? '<Right>' : TooSoon('<RIGHT>','i')
inoremap <buffer> <silent> <expr> <Left> TryKey('<Left>') ? '<Left>' : TooSoon('<LEFT>','i')
inoremap <buffer> <silent> <expr> <Down> TryKey('<Down>') ? '<Down>' : TooSoon('<DOWN>','i')
inoremap <buffer> <silent> <expr> <Up> TryKey('<Up>') ? '<Up>' : TooSoon('<UP>','i')
xnoremap <buffer> <silent> <expr> + TryKey('+') ? '+' : TooSoon('+','x')
nnoremap <buffer> <silent> <expr> + TryKey('+') ? '+' : TooSoon('+','n')
xnoremap <buffer> <silent> <expr> - TryKey('-') ? '-' : TooSoon('-','x')
nnoremap <buffer> <silent> <expr> - TryKey('-') ? '-' : TooSoon('-','n')
xnoremap <buffer> <silent> <expr> h TryKey('h') ? 'h' : TooSoon('h','x')
nnoremap <buffer> <silent> <expr> h TryKey('h') ? 'h' : TooSoon('h','n')
xnoremap <buffer> <silent> <expr> j TryKey('j') ? 'j' : TooSoon('j','x')
nnoremap <buffer> <silent> <expr> j TryKey('j') ? 'j' : TooSoon('j','n')
xnoremap <buffer> <silent> <expr> k TryKey('k') ? 'k' : TooSoon('k','x')
nnoremap <buffer> <silent> <expr> k TryKey('k') ? 'k' : TooSoon('k','n')
xnoremap <buffer> <silent> <expr> l TryKey('l') ? 'l' : TooSoon('l','x')
nnoremap <buffer> <silent> <expr> l TryKey('l') ? 'l' : TooSoon('l','n')
xnoremap <buffer> <silent> <expr> <Right> TryKey('<Right>') ? '<Right>' : TooSoon('<RIGHT>','x')
xnoremap <buffer> <silent> <expr> <Left> TryKey('<Left>') ? '<Left>' : TooSoon('<LEFT>','x')
xnoremap <buffer> <silent> <expr> <Down> TryKey('<Down>') ? '<Down>' : TooSoon('<DOWN>','x')
xnoremap <buffer> <silent> <expr> <Up> TryKey('<Up>') ? '<Up>' : TooSoon('<UP>','x')
nnoremap <buffer> <silent> <expr> <Right> TryKey('<Right>') ? '<Right>' : TooSoon('<RIGHT>','n')
nnoremap <buffer> <silent> <expr> <Left> TryKey('<Left>') ? '<Left>' : TooSoon('<LEFT>','n')
nnoremap <buffer> <silent> <expr> <Down> TryKey('<Down>') ? '<Down>' : TooSoon('<DOWN>','n')
nnoremap <buffer> <silent> <expr> <Up> TryKey('<Up>') ? '<Up>' : TooSoon('<UP>','n')
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal backupcopy=
setlocal balloonexpr=
setlocal nobinary
setlocal nobreakindent
setlocal breakindentopt=
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),:,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
set colorcolumn=80
setlocal colorcolumn=80
setlocal comments=b:#,fb:-
setlocal commentstring=#\ %s
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'python'
setlocal filetype=python
endif
setlocal fixendofline
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=tcq
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal formatprg=
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=-1
setlocal include=^\\s*\\(from\\|import\\)
setlocal includeexpr=substitute(v:fname,'\\.','/','g')
setlocal indentexpr=GetPythonIndent(v:lnum)
setlocal indentkeys=0{,0},:,!^F,o,O,e,<:>,=elif,=except
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=pydoc
setlocal nolinebreak
setlocal nolisp
setlocal lispwords=
setlocal nolist
setlocal makeencoding=
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=bin,octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=python3complete#Complete
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
set relativenumber
setlocal relativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=4
setlocal noshortname
setlocal signcolumn=auto
setlocal smartindent
setlocal softtabstop=4
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=%!Pl#Statusline(0,0)
setlocal suffixesadd=.py
setlocal noswapfile
setlocal synmaxcol=3000
if &syntax != 'python'
setlocal syntax=python
endif
setlocal tabstop=4
setlocal tagcase=
setlocal tags=
setlocal termkey=
setlocal termsize=
setlocal textwidth=79
setlocal thesaurus=
setlocal noundofile
setlocal undolevels=-123456
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
silent! normal! zE
let s:l = 12 - ((11 * winheight(0) + 9) / 18)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
12
normal! 05|
wincmd w
argglobal
if bufexists('templates/index.html') | buffer templates/index.html | else | edit templates/index.html | endif
let s:cpo_save=&cpo
set cpo&vim
inoremap <buffer> <silent> <expr> <Right> TryKey('<Right>') ? '<Right>' : TooSoon('<RIGHT>','i')
inoremap <buffer> <silent> <expr> <Left> TryKey('<Left>') ? '<Left>' : TooSoon('<LEFT>','i')
inoremap <buffer> <silent> <expr> <Down> TryKey('<Down>') ? '<Down>' : TooSoon('<DOWN>','i')
inoremap <buffer> <silent> <expr> <Up> TryKey('<Up>') ? '<Up>' : TooSoon('<UP>','i')
xnoremap <buffer> <silent> <expr> + TryKey('+') ? '+' : TooSoon('+','x')
nnoremap <buffer> <silent> <expr> + TryKey('+') ? '+' : TooSoon('+','n')
xnoremap <buffer> <silent> <expr> - TryKey('-') ? '-' : TooSoon('-','x')
nnoremap <buffer> <silent> <expr> - TryKey('-') ? '-' : TooSoon('-','n')
xnoremap <buffer> <silent> <expr> h TryKey('h') ? 'h' : TooSoon('h','x')
nnoremap <buffer> <silent> <expr> h TryKey('h') ? 'h' : TooSoon('h','n')
xnoremap <buffer> <silent> <expr> j TryKey('j') ? 'j' : TooSoon('j','x')
nnoremap <buffer> <silent> <expr> j TryKey('j') ? 'j' : TooSoon('j','n')
xnoremap <buffer> <silent> <expr> k TryKey('k') ? 'k' : TooSoon('k','x')
nnoremap <buffer> <silent> <expr> k TryKey('k') ? 'k' : TooSoon('k','n')
xnoremap <buffer> <silent> <expr> l TryKey('l') ? 'l' : TooSoon('l','x')
nnoremap <buffer> <silent> <expr> l TryKey('l') ? 'l' : TooSoon('l','n')
xnoremap <buffer> <silent> <expr> <Right> TryKey('<Right>') ? '<Right>' : TooSoon('<RIGHT>','x')
xnoremap <buffer> <silent> <expr> <Left> TryKey('<Left>') ? '<Left>' : TooSoon('<LEFT>','x')
xnoremap <buffer> <silent> <expr> <Down> TryKey('<Down>') ? '<Down>' : TooSoon('<DOWN>','x')
xnoremap <buffer> <silent> <expr> <Up> TryKey('<Up>') ? '<Up>' : TooSoon('<UP>','x')
nnoremap <buffer> <silent> <expr> <Right> TryKey('<Right>') ? '<Right>' : TooSoon('<RIGHT>','n')
nnoremap <buffer> <silent> <expr> <Left> TryKey('<Left>') ? '<Left>' : TooSoon('<LEFT>','n')
nnoremap <buffer> <silent> <expr> <Down> TryKey('<Down>') ? '<Down>' : TooSoon('<DOWN>','n')
nnoremap <buffer> <silent> <expr> <Up> TryKey('<Up>') ? '<Up>' : TooSoon('<UP>','n')
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal noautoindent
setlocal backupcopy=
setlocal balloonexpr=
setlocal nobinary
setlocal nobreakindent
setlocal breakindentopt=
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
set colorcolumn=80
setlocal colorcolumn=80
setlocal comments=s:<!--,m:\ \ \ \ ,e:-->
setlocal commentstring=<!--%s-->
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'htmldjango'
setlocal filetype=htmldjango
endif
setlocal fixendofline
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=tcq
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal formatprg=
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=-1
setlocal include=
setlocal includeexpr=
setlocal indentexpr=HtmlIndent()
setlocal indentkeys=o,O,<Return>,<>>,{,},!^F
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
setlocal lispwords=
setlocal nolist
setlocal makeencoding=
setlocal makeprg=
setlocal matchpairs=(:),{:},[:],<:>
setlocal modeline
setlocal modifiable
setlocal nrformats=bin,octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=htmlcomplete#CompleteTags
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
set relativenumber
setlocal relativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=4
setlocal noshortname
setlocal signcolumn=auto
setlocal smartindent
setlocal softtabstop=4
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=%!Pl#Statusline(0,1)
setlocal suffixesadd=
setlocal noswapfile
setlocal synmaxcol=3000
if &syntax != 'htmldjango'
setlocal syntax=htmldjango
endif
setlocal tabstop=4
setlocal tagcase=
setlocal tags=
setlocal termkey=
setlocal termsize=
setlocal textwidth=0
setlocal thesaurus=
setlocal noundofile
setlocal undolevels=-123456
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
silent! normal! zE
let s:l = 8 - ((7 * winheight(0) + 9) / 18)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
8
normal! 016|
wincmd w
argglobal
if bufexists('static/css/default.css') | buffer static/css/default.css | else | edit static/css/default.css | endif
let s:cpo_save=&cpo
set cpo&vim
inoremap <buffer> <silent> <expr> <Right> TryKey('<Right>') ? '<Right>' : TooSoon('<RIGHT>','i')
inoremap <buffer> <silent> <expr> <Left> TryKey('<Left>') ? '<Left>' : TooSoon('<LEFT>','i')
inoremap <buffer> <silent> <expr> <Down> TryKey('<Down>') ? '<Down>' : TooSoon('<DOWN>','i')
inoremap <buffer> <silent> <expr> <Up> TryKey('<Up>') ? '<Up>' : TooSoon('<UP>','i')
xnoremap <buffer> <silent> <expr> + TryKey('+') ? '+' : TooSoon('+','x')
nnoremap <buffer> <silent> <expr> + TryKey('+') ? '+' : TooSoon('+','n')
xnoremap <buffer> <silent> <expr> - TryKey('-') ? '-' : TooSoon('-','x')
nnoremap <buffer> <silent> <expr> - TryKey('-') ? '-' : TooSoon('-','n')
xnoremap <buffer> <silent> <expr> h TryKey('h') ? 'h' : TooSoon('h','x')
nnoremap <buffer> <silent> <expr> h TryKey('h') ? 'h' : TooSoon('h','n')
xnoremap <buffer> <silent> <expr> j TryKey('j') ? 'j' : TooSoon('j','x')
nnoremap <buffer> <silent> <expr> j TryKey('j') ? 'j' : TooSoon('j','n')
xnoremap <buffer> <silent> <expr> k TryKey('k') ? 'k' : TooSoon('k','x')
nnoremap <buffer> <silent> <expr> k TryKey('k') ? 'k' : TooSoon('k','n')
xnoremap <buffer> <silent> <expr> l TryKey('l') ? 'l' : TooSoon('l','x')
nnoremap <buffer> <silent> <expr> l TryKey('l') ? 'l' : TooSoon('l','n')
xnoremap <buffer> <silent> <expr> <Right> TryKey('<Right>') ? '<Right>' : TooSoon('<RIGHT>','x')
xnoremap <buffer> <silent> <expr> <Left> TryKey('<Left>') ? '<Left>' : TooSoon('<LEFT>','x')
xnoremap <buffer> <silent> <expr> <Down> TryKey('<Down>') ? '<Down>' : TooSoon('<DOWN>','x')
xnoremap <buffer> <silent> <expr> <Up> TryKey('<Up>') ? '<Up>' : TooSoon('<UP>','x')
nnoremap <buffer> <silent> <expr> <Right> TryKey('<Right>') ? '<Right>' : TooSoon('<RIGHT>','n')
nnoremap <buffer> <silent> <expr> <Left> TryKey('<Left>') ? '<Left>' : TooSoon('<LEFT>','n')
nnoremap <buffer> <silent> <expr> <Down> TryKey('<Down>') ? '<Down>' : TooSoon('<DOWN>','n')
nnoremap <buffer> <silent> <expr> <Up> TryKey('<Up>') ? '<Up>' : TooSoon('<UP>','n')
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal noautoindent
setlocal backupcopy=
setlocal balloonexpr=
setlocal nobinary
setlocal nobreakindent
setlocal breakindentopt=
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
set colorcolumn=80
setlocal colorcolumn=80
setlocal comments=s1:/*,mb:*,ex:*/
setlocal commentstring=/*%s*/
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'css'
setlocal filetype=css
endif
setlocal fixendofline
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=croql
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal formatprg=
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=-1
setlocal include=^\\s*@import\\s\\+\\%(url(\\)\\=
setlocal includeexpr=
setlocal indentexpr=GetCSSIndent()
setlocal indentkeys=0{,0},!^F,o,O
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
setlocal lispwords=
setlocal nolist
setlocal makeencoding=
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=bin,octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=csscomplete#CompleteCSS
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
set relativenumber
setlocal relativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=4
setlocal noshortname
setlocal signcolumn=auto
setlocal nosmartindent
setlocal softtabstop=4
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=%!Pl#Statusline(0,0)
setlocal suffixesadd=
setlocal noswapfile
setlocal synmaxcol=3000
if &syntax != 'css'
setlocal syntax=css
endif
setlocal tabstop=4
setlocal tagcase=
setlocal tags=
setlocal termkey=
setlocal termsize=
setlocal textwidth=0
setlocal thesaurus=
setlocal noundofile
setlocal undolevels=-123456
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
silent! normal! zE
let s:l = 111 - ((32 * winheight(0) + 18) / 37)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
111
normal! 02|
wincmd w
2wincmd w
exe '1resize ' . ((&lines * 18 + 19) / 39)
exe 'vert 1resize ' . ((&columns * 74 + 74) / 149)
exe '2resize ' . ((&lines * 18 + 19) / 39)
exe 'vert 2resize ' . ((&columns * 74 + 74) / 149)
exe 'vert 3resize ' . ((&columns * 74 + 74) / 149)
tabnext 1
if exists('s:wipebuf')
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20 shortmess=filnxtToO
set winminheight=1 winminwidth=1
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :

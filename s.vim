let SessionLoad = 1
if &cp | set nocp | endif
nnoremap <silent>  :CtrlP
map D :NERDTreeToggle
nmap E :ConqueTermSplit bash
let s:cpo_save=&cpo
set cpo&vim
xmap S <Plug>VSurround
map T :tabnew
map X :tabnext
map Z :tabprevious
nmap cs <Plug>Csurround
nmap ds <Plug>Dsurround
nmap gx <Plug>NetrwBrowseX
xmap gS <Plug>VgSurround
nmap ySS <Plug>YSsurround
nmap ySs <Plug>YSsurround
nmap yss <Plug>Yssurround
nmap yS <Plug>YSurround
nmap ys <Plug>Ysurround
nnoremap <silent> <Plug>NetrwBrowseX :call netrw#NetrwBrowseX(expand("<cWORD>"),0)
nnoremap <silent> <Plug>SurroundRepeat .
nnoremap <silent> <F11> :call conque_term#exec_file()
nmap <silent> <C-Right> :vertical resize +5
nmap <silent> <C-Up> :resize -5
nmap <silent> <C-Down> :resize +5
nmap <silent> <C-Left> :vertical resize -5
nmap <silent> <M-Right> :wincmd l
nmap <silent> <M-Left> :wincmd h
nmap <silent> <M-Down> :wincmd j
nmap <silent> <M-Up> :wincmd k
imap S <Plug>ISurround
imap s <Plug>Isurround
imap  <Plug>Isurround
let &cpo=s:cpo_save
unlet s:cpo_save
set paste
set background=dark
set backspace=2
set expandtab
set fileencodings=ucs-bom,utf-8,default,latin1
set hlsearch
set incsearch
set laststatus=2
set modelines=0
set runtimepath=~/.vim/bundle/ctrlp.vim,~/.vim,/usr/share/vim/vimfiles,/usr/share/vim/vim73,/usr/share/vim/vimfiles/after,~/.vim/after
set scrolljump=5
set scrolloff=3
set shiftwidth=2
set smartindent
set tabline=%!lightline#tabline()
set tabstop=2
set window=0
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~/ruby-connect-four
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +6 app.rb
badd +0 views/index.html.erb
badd +0 views/board.html.erb
badd +0 public/assets/css/application.css
badd +0 views/application.js.erb
silent! argdel *
edit app.rb
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
argglobal
let s:cpo_save=&cpo
set cpo&vim
cmap <buffer>  <Plug><cfile>
cmap <buffer>  <Plug><cword>
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal noautoindent
setlocal nobinary
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=:#
setlocal commentstring=#\ %s
setlocal complete=.,w,b,u,t,i
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
if &filetype != 'ruby'
setlocal filetype=ruby
endif
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
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=0
setlocal include=^\\s*\\<\\(load\\>\\|require\\>\\|autoload\\s*:\\=[\"']\\=\\h\\w*[\"']\\=,\\)
setlocal includeexpr=substitute(substitute(v:fname,'::','/','g'),'$','.rb','')
setlocal indentexpr=GetRubyIndent(v:lnum)
setlocal indentkeys=0{,0},0),0],!^F,o,O,e,:,.,=end,=else,=elsif,=when,=ensure,=rescue,==begin,==end,=private,=protected,=public
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=ri
setlocal nolinebreak
setlocal nolisp
setlocal nolist
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=octal,hex
set number
setlocal nonumber
setlocal numberwidth=4
setlocal omnifunc=rubycomplete#Complete
setlocal path=~/.rvm/rubies/ruby-2.1.2/lib/ruby/site_ruby/2.1.0,~/.rvm/rubies/ruby-2.1.2/lib/ruby/site_ruby/2.1.0/x86_64-darwin13.0,~/.rvm/rubies/ruby-2.1.2/lib/ruby/site_ruby,~/.rvm/rubies/ruby-2.1.2/lib/ruby/vendor_ruby/2.1.0,~/.rvm/rubies/ruby-2.1.2/lib/ruby/vendor_ruby/2.1.0/x86_64-darwin13.0,~/.rvm/rubies/ruby-2.1.2/lib/ruby/vendor_ruby,~/.rvm/rubies/ruby-2.1.2/lib/ruby/2.1.0,~/.rvm/rubies/ruby-2.1.2/lib/ruby/2.1.0/x86_64-darwin13.0
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
set relativenumber
setlocal relativenumber
setlocal noscrollbind
setlocal shiftwidth=2
setlocal noshortname
setlocal nosmartindent
setlocal softtabstop=0
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=%{lightline#link()}%#LightLineLeft_active_0#%(\ %{exists(\"*MyMode\")?MyMode():\"\"}\ %)%{(!!strlen(exists(\"*MyMode\")?MyMode():\"\"))*((&paste))?('|'):''}%(\ %{&paste?\"PASTE\":\"\"}\ %)%#LightLineLeft_active_0_1#%#LightLineLeft_active_1#%(\ %{exists(\"*MyFugitive\")?MyFugitive():\"\"}\ %)%{(!!strlen(exists(\"*MyFugitive\")?MyFugitive():\"\"))*((!!strlen(exists(\"*MyFilename\")?MyFilename():\"\")))?('|'):''}%(\ %{exists(\"*MyFilename\")?MyFilename():\"\"}\ %)%#LightLineLeft_active_1_2#%#LightLineMiddle_active#%=%#LightLineRight_active_2_3#|%#LightLineRight_active_2#%(\ %{exists(\"*MyFileformat\")?MyFileformat():\"\"}\ %)%{(!!strlen(exists(\"*MyFileencoding\")?MyFileencoding():\"\"))*((!!strlen(exists(\"*MyFileformat\")?MyFileformat():\"\")))?('|'):''}%(\ %{exists(\"*MyFileencoding\")?MyFileencoding():\"\"}\ %)%{(!!strlen(exists(\"*MyFiletype\")?MyFiletype():\"\"))*((!!strlen(exists(\"*MyFileformat\")?MyFileformat():\"\"))+(!!strlen(exists(\"*MyFileencoding\")?MyFileencoding():\"\")))?('|'):''}%(\ %{exists(\"*MyFiletype\")?MyFiletype():\"\"}\ %)%#LightLineRight_active_1_2#%#LightLineRight_active_1#%(\ %3p%%\ %)%#LightLineRight_active_0_1#%#LightLineRight_active_0#%(\ %3l:%-2v\ %)
setlocal suffixesadd=.rb
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != 'ruby'
setlocal syntax=ruby
endif
setlocal tabstop=2
setlocal tags=./tags,tags,~/.rvm/rubies/ruby-2.1.2/lib/ruby/site_ruby/2.1.0/tags,~/.rvm/rubies/ruby-2.1.2/lib/ruby/site_ruby/2.1.0/x86_64-darwin13.0/tags,~/.rvm/rubies/ruby-2.1.2/lib/ruby/site_ruby/tags,~/.rvm/rubies/ruby-2.1.2/lib/ruby/vendor_ruby/2.1.0/tags,~/.rvm/rubies/ruby-2.1.2/lib/ruby/vendor_ruby/2.1.0/x86_64-darwin13.0/tags,~/.rvm/rubies/ruby-2.1.2/lib/ruby/vendor_ruby/tags,~/.rvm/rubies/ruby-2.1.2/lib/ruby/2.1.0/tags,~/.rvm/rubies/ruby-2.1.2/lib/ruby/2.1.0/x86_64-darwin13.0/tags
setlocal textwidth=0
setlocal thesaurus=
setlocal noundofile
setlocal nowinfixheight
setlocal nowinfixwidth
set nowrap
setlocal nowrap
setlocal wrapmargin=0
silent! normal! zE
let s:l = 6 - ((5 * winheight(0) + 21) / 42)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
6
normal! 0
tabedit views/application.js.erb
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
argglobal
let s:cpo_save=&cpo
set cpo&vim
cmap <buffer>  <Plug><cfile>
cmap <buffer>  <Plug><cword>
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal noautoindent
setlocal nobinary
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal cindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=j1,J1
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=:#
setlocal commentstring=<%#%s%>
setlocal complete=.,w,b,u,t,i
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
if &filetype != 'eruby'
setlocal filetype=eruby
endif
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
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=0
setlocal include=^\\s*\\<\\(load\\>\\|require\\>\\|autoload\\s*:\\=[\"']\\=\\h\\w*[\"']\\=,\\)
setlocal includeexpr=substitute(substitute(v:fname,'::','/','g'),'$','.rb','')
setlocal indentexpr=GetErubyIndent()
setlocal indentkeys=o,O,*<Return>,<>>,{,},0),0],o,O,!^F,=end,=else,=elsif,=rescue,=ensure,=when
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=ri
setlocal nolinebreak
setlocal nolisp
setlocal nolist
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=octal,hex
set number
setlocal nonumber
setlocal numberwidth=4
setlocal omnifunc=rubycomplete#Complete
setlocal path=~/.rvm/rubies/ruby-2.1.2/lib/ruby/site_ruby/2.1.0,~/.rvm/rubies/ruby-2.1.2/lib/ruby/site_ruby/2.1.0/x86_64-darwin13.0,~/.rvm/rubies/ruby-2.1.2/lib/ruby/site_ruby,~/.rvm/rubies/ruby-2.1.2/lib/ruby/vendor_ruby/2.1.0,~/.rvm/rubies/ruby-2.1.2/lib/ruby/vendor_ruby/2.1.0/x86_64-darwin13.0,~/.rvm/rubies/ruby-2.1.2/lib/ruby/vendor_ruby,~/.rvm/rubies/ruby-2.1.2/lib/ruby/2.1.0,~/.rvm/rubies/ruby-2.1.2/lib/ruby/2.1.0/x86_64-darwin13.0
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
set relativenumber
setlocal relativenumber
setlocal noscrollbind
setlocal shiftwidth=2
setlocal noshortname
setlocal nosmartindent
setlocal softtabstop=0
setlocal nospell
setlocal spellcapcheck=
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=%{lightline#link()}%#LightLineLeft_active_0#%(\ %{exists(\"*MyMode\")?MyMode():\"\"}\ %)%{(!!strlen(exists(\"*MyMode\")?MyMode():\"\"))*((&paste))?('|'):''}%(\ %{&paste?\"PASTE\":\"\"}\ %)%#LightLineLeft_active_0_1#%#LightLineLeft_active_1#%(\ %{exists(\"*MyFugitive\")?MyFugitive():\"\"}\ %)%{(!!strlen(exists(\"*MyFugitive\")?MyFugitive():\"\"))*((!!strlen(exists(\"*MyFilename\")?MyFilename():\"\")))?('|'):''}%(\ %{exists(\"*MyFilename\")?MyFilename():\"\"}\ %)%#LightLineLeft_active_1_2#%#LightLineMiddle_active#%=%#LightLineRight_active_2_3#|%#LightLineRight_active_2#%(\ %{exists(\"*MyFileformat\")?MyFileformat():\"\"}\ %)%{(!!strlen(exists(\"*MyFileencoding\")?MyFileencoding():\"\"))*((!!strlen(exists(\"*MyFileformat\")?MyFileformat():\"\")))?('|'):''}%(\ %{exists(\"*MyFileencoding\")?MyFileencoding():\"\"}\ %)%{(!!strlen(exists(\"*MyFiletype\")?MyFiletype():\"\"))*((!!strlen(exists(\"*MyFileformat\")?MyFileformat():\"\"))+(!!strlen(exists(\"*MyFileencoding\")?MyFileencoding():\"\")))?('|'):''}%(\ %{exists(\"*MyFiletype\")?MyFiletype():\"\"}\ %)%#LightLineRight_active_1_2#%#LightLineRight_active_1#%(\ %3p%%\ %)%#LightLineRight_active_0_1#%#LightLineRight_active_0#%(\ %3l:%-2v\ %)
setlocal suffixesadd=.rb
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != 'eruby'
setlocal syntax=eruby
endif
setlocal tabstop=2
setlocal tags=./tags,tags,~/.rvm/rubies/ruby-2.1.2/lib/ruby/site_ruby/2.1.0/tags,~/.rvm/rubies/ruby-2.1.2/lib/ruby/site_ruby/2.1.0/x86_64-darwin13.0/tags,~/.rvm/rubies/ruby-2.1.2/lib/ruby/site_ruby/tags,~/.rvm/rubies/ruby-2.1.2/lib/ruby/vendor_ruby/2.1.0/tags,~/.rvm/rubies/ruby-2.1.2/lib/ruby/vendor_ruby/2.1.0/x86_64-darwin13.0/tags,~/.rvm/rubies/ruby-2.1.2/lib/ruby/vendor_ruby/tags,~/.rvm/rubies/ruby-2.1.2/lib/ruby/2.1.0/tags,~/.rvm/rubies/ruby-2.1.2/lib/ruby/2.1.0/x86_64-darwin13.0/tags
setlocal textwidth=0
setlocal thesaurus=
setlocal noundofile
setlocal nowinfixheight
setlocal nowinfixwidth
set nowrap
setlocal nowrap
setlocal wrapmargin=0
silent! normal! zE
let s:l = 45 - ((29 * winheight(0) + 21) / 42)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
45
normal! 0
tabedit public/assets/css/application.css
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
argglobal
setlocal noautoindent
setlocal nobinary
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=s1:/*,mb:*,ex:*/
setlocal commentstring=/*%s*/
setlocal complete=.,w,b,u,t,i
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
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=0
setlocal include=^\\s*@import\\s\\+\\%(url(\\)\\=
setlocal includeexpr=
setlocal indentexpr=GetCSSIndent()
setlocal indentkeys=0{,0},!^F,o,O
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
setlocal nolist
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=octal,hex
set number
setlocal nonumber
setlocal numberwidth=4
setlocal omnifunc=csscomplete#CompleteCSS
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
set relativenumber
setlocal relativenumber
setlocal noscrollbind
setlocal shiftwidth=2
setlocal noshortname
setlocal nosmartindent
setlocal softtabstop=0
setlocal nospell
setlocal spellcapcheck=
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=%{lightline#link()}%#LightLineLeft_active_0#%(\ %{exists(\"*MyMode\")?MyMode():\"\"}\ %)%{(!!strlen(exists(\"*MyMode\")?MyMode():\"\"))*((&paste))?('|'):''}%(\ %{&paste?\"PASTE\":\"\"}\ %)%#LightLineLeft_active_0_1#%#LightLineLeft_active_1#%(\ %{exists(\"*MyFugitive\")?MyFugitive():\"\"}\ %)%{(!!strlen(exists(\"*MyFugitive\")?MyFugitive():\"\"))*((!!strlen(exists(\"*MyFilename\")?MyFilename():\"\")))?('|'):''}%(\ %{exists(\"*MyFilename\")?MyFilename():\"\"}\ %)%#LightLineLeft_active_1_2#%#LightLineMiddle_active#%=%#LightLineRight_active_2_3#|%#LightLineRight_active_2#%(\ %{exists(\"*MyFileformat\")?MyFileformat():\"\"}\ %)%{(!!strlen(exists(\"*MyFileencoding\")?MyFileencoding():\"\"))*((!!strlen(exists(\"*MyFileformat\")?MyFileformat():\"\")))?('|'):''}%(\ %{exists(\"*MyFileencoding\")?MyFileencoding():\"\"}\ %)%{(!!strlen(exists(\"*MyFiletype\")?MyFiletype():\"\"))*((!!strlen(exists(\"*MyFileformat\")?MyFileformat():\"\"))+(!!strlen(exists(\"*MyFileencoding\")?MyFileencoding():\"\")))?('|'):''}%(\ %{exists(\"*MyFiletype\")?MyFiletype():\"\"}\ %)%#LightLineRight_active_1_2#%#LightLineRight_active_1#%(\ %3p%%\ %)%#LightLineRight_active_0_1#%#LightLineRight_active_0#%(\ %3l:%-2v\ %)
setlocal suffixesadd=
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != 'css'
setlocal syntax=css
endif
setlocal tabstop=2
setlocal tags=
setlocal textwidth=0
setlocal thesaurus=
setlocal noundofile
setlocal nowinfixheight
setlocal nowinfixwidth
set nowrap
setlocal nowrap
setlocal wrapmargin=0
silent! normal! zE
let s:l = 3 - ((2 * winheight(0) + 21) / 42)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
3
normal! 02l
tabedit views/board.html.erb
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
argglobal
let s:cpo_save=&cpo
set cpo&vim
cmap <buffer>  <Plug><cfile>
cmap <buffer>  <Plug><cword>
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal noautoindent
setlocal nobinary
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=:#
setlocal commentstring=<%#%s%>
setlocal complete=.,w,b,u,t,i
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
if &filetype != 'eruby'
setlocal filetype=eruby
endif
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
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=0
setlocal include=^\\s*\\<\\(load\\>\\|require\\>\\|autoload\\s*:\\=[\"']\\=\\h\\w*[\"']\\=,\\)
setlocal includeexpr=substitute(substitute(v:fname,'::','/','g'),'$','.rb','')
setlocal indentexpr=GetErubyIndent()
setlocal indentkeys=o,O,*<Return>,<>>,{,},0),0],o,O,!^F,=end,=else,=elsif,=rescue,=ensure,=when
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=ri
setlocal nolinebreak
setlocal nolisp
setlocal nolist
setlocal makeprg=
setlocal matchpairs=(:),{:},[:],<:>
setlocal modeline
setlocal modifiable
setlocal nrformats=octal,hex
set number
setlocal nonumber
setlocal numberwidth=4
setlocal omnifunc=rubycomplete#Complete
setlocal path=~/.rvm/rubies/ruby-2.1.2/lib/ruby/site_ruby/2.1.0,~/.rvm/rubies/ruby-2.1.2/lib/ruby/site_ruby/2.1.0/x86_64-darwin13.0,~/.rvm/rubies/ruby-2.1.2/lib/ruby/site_ruby,~/.rvm/rubies/ruby-2.1.2/lib/ruby/vendor_ruby/2.1.0,~/.rvm/rubies/ruby-2.1.2/lib/ruby/vendor_ruby/2.1.0/x86_64-darwin13.0,~/.rvm/rubies/ruby-2.1.2/lib/ruby/vendor_ruby,~/.rvm/rubies/ruby-2.1.2/lib/ruby/2.1.0,~/.rvm/rubies/ruby-2.1.2/lib/ruby/2.1.0/x86_64-darwin13.0
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
set relativenumber
setlocal relativenumber
setlocal noscrollbind
setlocal shiftwidth=2
setlocal noshortname
setlocal nosmartindent
setlocal softtabstop=0
setlocal nospell
setlocal spellcapcheck=
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=%{lightline#link()}%#LightLineLeft_active_0#%(\ %{exists(\"*MyMode\")?MyMode():\"\"}\ %)%{(!!strlen(exists(\"*MyMode\")?MyMode():\"\"))*((&paste))?('|'):''}%(\ %{&paste?\"PASTE\":\"\"}\ %)%#LightLineLeft_active_0_1#%#LightLineLeft_active_1#%(\ %{exists(\"*MyFugitive\")?MyFugitive():\"\"}\ %)%{(!!strlen(exists(\"*MyFugitive\")?MyFugitive():\"\"))*((!!strlen(exists(\"*MyFilename\")?MyFilename():\"\")))?('|'):''}%(\ %{exists(\"*MyFilename\")?MyFilename():\"\"}\ %)%#LightLineLeft_active_1_2#%#LightLineMiddle_active#%=%#LightLineRight_active_2_3#|%#LightLineRight_active_2#%(\ %{exists(\"*MyFileformat\")?MyFileformat():\"\"}\ %)%{(!!strlen(exists(\"*MyFileencoding\")?MyFileencoding():\"\"))*((!!strlen(exists(\"*MyFileformat\")?MyFileformat():\"\")))?('|'):''}%(\ %{exists(\"*MyFileencoding\")?MyFileencoding():\"\"}\ %)%{(!!strlen(exists(\"*MyFiletype\")?MyFiletype():\"\"))*((!!strlen(exists(\"*MyFileformat\")?MyFileformat():\"\"))+(!!strlen(exists(\"*MyFileencoding\")?MyFileencoding():\"\")))?('|'):''}%(\ %{exists(\"*MyFiletype\")?MyFiletype():\"\"}\ %)%#LightLineRight_active_1_2#%#LightLineRight_active_1#%(\ %3p%%\ %)%#LightLineRight_active_0_1#%#LightLineRight_active_0#%(\ %3l:%-2v\ %)
setlocal suffixesadd=.rb
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != 'eruby'
setlocal syntax=eruby
endif
setlocal tabstop=2
setlocal tags=./tags,tags,~/.rvm/rubies/ruby-2.1.2/lib/ruby/site_ruby/2.1.0/tags,~/.rvm/rubies/ruby-2.1.2/lib/ruby/site_ruby/2.1.0/x86_64-darwin13.0/tags,~/.rvm/rubies/ruby-2.1.2/lib/ruby/site_ruby/tags,~/.rvm/rubies/ruby-2.1.2/lib/ruby/vendor_ruby/2.1.0/tags,~/.rvm/rubies/ruby-2.1.2/lib/ruby/vendor_ruby/2.1.0/x86_64-darwin13.0/tags,~/.rvm/rubies/ruby-2.1.2/lib/ruby/vendor_ruby/tags,~/.rvm/rubies/ruby-2.1.2/lib/ruby/2.1.0/tags,~/.rvm/rubies/ruby-2.1.2/lib/ruby/2.1.0/x86_64-darwin13.0/tags
setlocal textwidth=0
setlocal thesaurus=
setlocal noundofile
setlocal nowinfixheight
setlocal nowinfixwidth
set nowrap
setlocal nowrap
setlocal wrapmargin=0
silent! normal! zE
let s:l = 18 - ((12 * winheight(0) + 21) / 42)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
18
normal! 019l
tabedit views/index.html.erb
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
argglobal
let s:cpo_save=&cpo
set cpo&vim
cmap <buffer>  <Plug><cfile>
cmap <buffer>  <Plug><cword>
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal noautoindent
setlocal nobinary
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=:#
setlocal commentstring=<%#%s%>
setlocal complete=.,w,b,u,t,i
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
if &filetype != 'eruby'
setlocal filetype=eruby
endif
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
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=0
setlocal include=^\\s*\\<\\(load\\>\\|require\\>\\|autoload\\s*:\\=[\"']\\=\\h\\w*[\"']\\=,\\)
setlocal includeexpr=substitute(substitute(v:fname,'::','/','g'),'$','.rb','')
setlocal indentexpr=GetErubyIndent()
setlocal indentkeys=o,O,*<Return>,<>>,{,},0),0],o,O,!^F,=end,=else,=elsif,=rescue,=ensure,=when
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=ri
setlocal nolinebreak
setlocal nolisp
setlocal nolist
setlocal makeprg=
setlocal matchpairs=(:),{:},[:],<:>
setlocal modeline
setlocal modifiable
setlocal nrformats=octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=rubycomplete#Complete
setlocal path=~/.rvm/rubies/ruby-2.1.2/lib/ruby/site_ruby/2.1.0,~/.rvm/rubies/ruby-2.1.2/lib/ruby/site_ruby/2.1.0/x86_64-darwin13.0,~/.rvm/rubies/ruby-2.1.2/lib/ruby/site_ruby,~/.rvm/rubies/ruby-2.1.2/lib/ruby/vendor_ruby/2.1.0,~/.rvm/rubies/ruby-2.1.2/lib/ruby/vendor_ruby/2.1.0/x86_64-darwin13.0,~/.rvm/rubies/ruby-2.1.2/lib/ruby/vendor_ruby,~/.rvm/rubies/ruby-2.1.2/lib/ruby/2.1.0,~/.rvm/rubies/ruby-2.1.2/lib/ruby/2.1.0/x86_64-darwin13.0
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
set relativenumber
setlocal relativenumber
setlocal noscrollbind
setlocal shiftwidth=2
setlocal noshortname
setlocal nosmartindent
setlocal softtabstop=0
setlocal nospell
setlocal spellcapcheck=
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=%{lightline#link()}%#LightLineLeft_active_0#%(\ %{exists(\"*MyMode\")?MyMode():\"\"}\ %)%{(!!strlen(exists(\"*MyMode\")?MyMode():\"\"))*((&paste))?('|'):''}%(\ %{&paste?\"PASTE\":\"\"}\ %)%#LightLineLeft_active_0_1#%#LightLineLeft_active_1#%(\ %{exists(\"*MyFugitive\")?MyFugitive():\"\"}\ %)%{(!!strlen(exists(\"*MyFugitive\")?MyFugitive():\"\"))*((!!strlen(exists(\"*MyFilename\")?MyFilename():\"\")))?('|'):''}%(\ %{exists(\"*MyFilename\")?MyFilename():\"\"}\ %)%#LightLineLeft_active_1_2#%#LightLineMiddle_active#%=%#LightLineRight_active_2_3#|%#LightLineRight_active_2#%(\ %{exists(\"*MyFileformat\")?MyFileformat():\"\"}\ %)%{(!!strlen(exists(\"*MyFileencoding\")?MyFileencoding():\"\"))*((!!strlen(exists(\"*MyFileformat\")?MyFileformat():\"\")))?('|'):''}%(\ %{exists(\"*MyFileencoding\")?MyFileencoding():\"\"}\ %)%{(!!strlen(exists(\"*MyFiletype\")?MyFiletype():\"\"))*((!!strlen(exists(\"*MyFileformat\")?MyFileformat():\"\"))+(!!strlen(exists(\"*MyFileencoding\")?MyFileencoding():\"\")))?('|'):''}%(\ %{exists(\"*MyFiletype\")?MyFiletype():\"\"}\ %)%#LightLineRight_active_1_2#%#LightLineRight_active_1#%(\ %3p%%\ %)%#LightLineRight_active_0_1#%#LightLineRight_active_0#%(\ %3l:%-2v\ %)
setlocal suffixesadd=.rb
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != 'eruby'
setlocal syntax=eruby
endif
setlocal tabstop=2
setlocal tags=./tags,tags,~/.rvm/rubies/ruby-2.1.2/lib/ruby/site_ruby/2.1.0/tags,~/.rvm/rubies/ruby-2.1.2/lib/ruby/site_ruby/2.1.0/x86_64-darwin13.0/tags,~/.rvm/rubies/ruby-2.1.2/lib/ruby/site_ruby/tags,~/.rvm/rubies/ruby-2.1.2/lib/ruby/vendor_ruby/2.1.0/tags,~/.rvm/rubies/ruby-2.1.2/lib/ruby/vendor_ruby/2.1.0/x86_64-darwin13.0/tags,~/.rvm/rubies/ruby-2.1.2/lib/ruby/vendor_ruby/tags,~/.rvm/rubies/ruby-2.1.2/lib/ruby/2.1.0/tags,~/.rvm/rubies/ruby-2.1.2/lib/ruby/2.1.0/x86_64-darwin13.0/tags
setlocal textwidth=0
setlocal thesaurus=
setlocal noundofile
setlocal nowinfixheight
setlocal nowinfixwidth
set nowrap
setlocal nowrap
setlocal wrapmargin=0
silent! normal! zE
let s:l = 1 - ((0 * winheight(0) + 21) / 42)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
tabnext 4
if exists('s:wipebuf')
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20 shortmess=filnxtToO
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :

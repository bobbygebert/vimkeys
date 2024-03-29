" Insert mode navigation
inoremap II <ESC>I
inoremap AA <ESC>A

" Normal navigation
"nnoremap <silent> < :let @s=@/<CR>:set hls!<CR>?^\h.*(<CR>:let @/=@s<CR>:set hls!<CR>
"nnoremap <silent> > :let @s=@/<CR>:set hls!<CR>/^\h.*(<CR>:let @/=@s<CR>:set hls!<CR>
nnoremap < [[
nnoremap > ]]

noremap <C-l> <ESC>
noremap! <C-l> <ESC>

" <CR> -> :
"vnoremap <CR> :
"nnoremap <CR> :
au FileType vim,c,h,python,rust,lisp,scheme,text,json nnoremap <buffer> <CR> :
au FileType vim,c,h,python,rust,lisp,scheme,text,json vnoremap <buffer> <CR> :
augroup enter_fix
    au!
    au BufReadPost quickfix nnoremap <buffer> <CR> <CR>
    au CmdWinEnter * nnoremap <buffer> <CR> <CR>
augroup END

" Search
nnoremap <silent> <Esc> :nohlsearch<Bar>:echo<CR>

" ctags
nnoremap <BSLASH> 2<C-]>
nnoremap <BAR> 2<C-]>
nnoremap <C-]> 2<C-]>

" Buffer commands
nmap KK :q <CR>

" Quick fix
nmap <C-c><C-c><C-l> :ccl<CR>:lcl<CR>

nmap <C-c><C-c><C-f> :cfile build/log <CR>
nmap <C-c><C-c><C-o> :cope <CR>
nmap <C-c><C-c><C-c> :cc <CR>
nmap <C-c><C-n> :cn <CR>
nmap <C-c><C-p> :cp <CR>

nmap <C-c><C-l><C-o> :lope <CR>
nmap <C-c><C-l><C-l> :ll <CR>
nmap <C-c><C-l><C-n> :lnext <CR>
nmap <C-c><C-l><C-p> :lp <CR>

" Pane navigation
nmap <C-j> <C-W>j
nmap <C-k> <C-W>k
nmap <C-h> <C-W>h
nmap <C-l> <C-W>l
tmap <C-j> <C-W>j
tmap <C-k> <C-W>k
tmap <C-h> <C-W>h
tmap <C-l> <C-W>l

nnoremap <silent> + :exe "resize " . (winheight(0) * 3/2)<CR>
nnoremap <silent> - :exe "resize " . (winheight(0) * 2/3)<CR>

" General mapping correction

"noremap 1 !
"noremap 2 @
"noremap 3 #
"noremap 4 $
"noremap 5 %
"noremap 6 ^
"noremap 7 &
"noremap 8 *
"noremap 9 (
"noremap 0 )
"noremap - _
"
"noremap ! 1
"noremap @ 2
"noremap # 3
"noremap $ 4
"noremap % 5
"noremap ^ 6
"noremap & 7
"noremap * 8
"noremap ( 9
"noremap ) 0
"
"noremap! 1 !
"noremap! 2 @
"noremap! 3 #
"noremap! 4 $
"noremap! 5 %
"noremap! 6 ^
"noremap! 7 &
"noremap! 8 *
"noremap! 9 (
"noremap! 0 )
"noremap! - _
"
"noremap! ! 1
"noremap! @ 2
"noremap! # 3
"noremap! $ 4
"noremap! % 5
"noremap! ^ 6
"noremap! & 7
"noremap! * 8
"noremap! ( 9
"noremap! ) 0
"noremap! _ -
"
"" Paren
"noremap 9 [(
"noremap 0 ])
"
"noremap i9 i(
"noremap a9 a(
"
"noremap t9 t(
"noremap t0 t)
"noremap T9 T(
"noremap T0 T)
"noremap f9 f(
"noremap f0 f)
"noremap F9 F(
"noremap F0 F)
"
"" Curly
"noremap! [ {
"noremap! ] }
"
"noremap i[ i{
"noremap a[ a{
"
"noremap t[ t{
"noremap t] t}
"noremap T[ T{
"noremap T] T}
"noremap f[ f{
"noremap f] f}
"noremap F[ F{
"noremap F] F}
"
"noremap [ [{
"noremap ] ]}
"
"" Square
"noremap! { [
"noremap! } ]
"
"noremap i{ i[
"noremap a{ a[
"
"noremap t{ t[
"noremap t} t]
"noremap T{ T[
"noremap T} T]
"noremap f{ f[
"noremap f} f]
"noremap F{ F[
"noremap F} F]
"
"" Underscore
"noremap! - _
"noremap! _ -
"
"noremap t- t_
"noremap t_ t-
"noremap T- T_
"noremap T_ T-
"noremap f- f_
"noremap f_ f-
"noremap F- F_
"noremap F_ F-
"
"" Key mapping correction for python files
"au FileType python inoremap <buffer> ; :
"
"" Key mapping correction for c files
"au FileType c,rust noremap! <buffer> ' "
"au FileType c,rust noremap! <buffer> " '
"au FileType c,rust noremap <buffer> ' "
"au FileType c,rust noremap <buffer> " '
"au FileType c,rust noremap i' i"
"au FileType c,rust noremap i" i'
"au FileType c,rust noremap a' a"
"au FileType c,rust noremap a" a'
"au FileType c,rust noremap t' t"
"au FileType c,rust noremap t" t'
"au FileType c,rust noremap T' T"
"au FileType c,rust noremap T" T'
"au FileType c,rust noremap f' f"
"au FileType c,rust noremap f" f'
"au FileType c,rust noremap F' F"
"au FileType c,rust noremap F" F'
"au FileType c,rust noremap! <buffer> <BSLASH> <BAR>
"au FileType c,rust noremap! <buffer> <BAR> <BSLASH>
"au FileType c,rust noremap! <buffer> ` ->

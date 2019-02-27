" Insert mode navigation
inoremap II <ESC>I
inoremap AA <ESC>A

" Normal navigation
"nnoremap <silent> < :let @s=@/<CR>:set hls!<CR>?^\h.*(<CR>:let @/=@s<CR>:set hls!<CR>
"nnoremap <silent> > :let @s=@/<CR>:set hls!<CR>/^\h.*(<CR>:let @/=@s<CR>:set hls!<CR>
nnoremap < [[
nnoremap > ]]

" <CR> -> :
vnoremap <CR> :
nnoremap <CR> :
augroup enter_fix
    au!
    au BufReadPost quickfix nnoremap <buffer> <CR> <CR>
    au CmdWinEnter * nnoremap <buffer> <CR> <CR>
augroup END

" Leader
let mapleader = ','
nnoremap " ,

" Search
nnoremap <silent> <Esc> :nohlsearch<Bar>:echo<CR>

" ctags
nnoremap \ 2<C-]>

" Buffer commands
nmap KK :q <CR>

" Quick fix
nmap <C-c><C-c><C-f> :cfile build/log <CR>
nmap <C-c><C-c><C-o> :cope <CR>
nmap <C-c><C-c><C-l> :ccl <CR>
nmap <C-c><C-c><C-l> :ccl <CR>
nmap <C-c><C-c><C-c> :cc <CR>
nmap <C-c><C-n> :cn <CR>
nmap <C-c><C-p> :cp <CR>

nmap <C-c><C-l><C-l> :ll <CR>
nmap <C-c><C-l><C-n> :lnext <CR>
nmap <C-c><C-l><C-p> :lp <CR>

" Pane navigation
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

nnoremap <silent> + :exe "resize " . (winheight(0) * 3/2)<CR>
nnoremap <silent> - :exe "resize " . (winheight(0) * 2/3)<CR>

" General mapping correction

noremap 1 !
noremap 2 @
noremap 3 #
noremap 4 $
noremap 5 %
noremap 6 ^
noremap 7 &
noremap 8 *
noremap 9 (
noremap 0 )
noremap - _

noremap ! 1
noremap @ 2
noremap # 3
noremap $ 4
noremap % 5
noremap ^ 6
noremap & 7
noremap * 8
noremap ( 9
noremap ) 0
noremap _ -

noremap! 1 !
noremap! 2 @
noremap! 3 #
noremap! 4 $
noremap! 5 %
noremap! 6 ^
noremap! 7 &
noremap! 8 *
noremap! 9 (
noremap! 0 )
noremap! - _

noremap! ! 1
noremap! @ 2
noremap! # 3
noremap! $ 4
noremap! % 5
noremap! ^ 6
noremap! & 7
noremap! * 8
noremap! ( 9
noremap! ) 0
noremap! _ -

" Paren
noremap 9 [(
noremap 0 ])

noremap i9 i(
noremap a9 a(

noremap t9 t(
noremap t0 t)
noremap T9 T(
noremap T0 T)
noremap f9 f(
noremap f0 f)
noremap F9 F(
noremap F0 F)

" Curly
noremap! [ {
noremap! ] }

noremap i[ i{
noremap a[ a{

noremap t[ t{
noremap t] t}
noremap T[ T{
noremap T] T}
noremap f[ f{
noremap f] f}
noremap F[ F{
noremap F] F}

noremap [ [{
noremap ] ]}

" Square
noremap! { [
noremap! } ]

noremap i{ i[
noremap a{ a[

noremap t{ t[
noremap t} t]
noremap T{ T[
noremap T} T]
noremap f{ f[
noremap f} f]
noremap F{ F[
noremap F} F]

" Underscore
noremap! - _
noremap! _ -

noremap t- t_
noremap t_ t-
noremap T- T_
noremap T_ T-
noremap f- f_
noremap f_ f-
noremap F- F_
noremap F_ F-

" Key mapping correction for python files
au FileType python inoremap <buffer> ; :

" Key mapping correction for c files
au FileType c noremap! <buffer> ' "
au FileType c noremap! <buffer> " '
au FileType c noremap <buffer> ' "
au FileType c noremap <buffer> " '
au FileType c noremap i' i"
au FileType c noremap i" i'
au FileType c noremap a' a"
au FileType c noremap a" a'
au FileType c noremap t' t"
au FileType c noremap t" t'
au FileType c noremap T' T"
au FileType c noremap T" T'
au FileType c noremap f' f"
au FileType c noremap f" f'
au FileType c noremap F' F"
au FileType c noremap F" F'
au FileType c noremap! <buffer> <BSLASH> <BAR>
au FileType c noremap! <buffer> <BAR> <BSLASH>
au FileType c noremap! <buffer> ` ->

" Insert mode navigation
inoremap II <ESC>I
inoremap AA <ESC>A

" Normal navigation
nmap <silent> < :let @s=@/<CR>:set hls!<CR>?^\h.*(<CR>:let @/=@s<CR>:set hls!<CR>
nmap <silent> > :let @s=@/<CR>:set hls!<CR>/^\h.*(<CR>:let @/=@s<CR>:set hls!<CR>
nmap ( [(
nmap ) ])
nmap [[ [{
nmap ]] ]}

" Visual navigation
vmap ( [(
vmap ) ])
vmap [[ [{
vmap ]] ]}

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
nnoremap <Bar> 2<C-]>
nmap \ :PreviewTag<CR>

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

" Key mapping correction for python profile
"nmap ; :
"vmap ; :

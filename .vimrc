" 탭 사이즈 설정
set tabstop=4
set softtabstop=4
set shiftwidth=4
autocmd FileType html,css,js,ts,json :setlocal ts=2 sw=2 sts=2

" 기타 설정
set fileencodings=utf8
set ruler
set showmatch
set smartcase
set smartindent
set smarttab
set hlsearch

" 색상
color ron

" 문법 강조
if has("syntax")
    syntax on
endif

" 상태바 항상 표시 & 좌측 하단에 표시
set laststatus=2
set statusline=\ %<%l:%v\ [%P]%=%a\ %h%m%r\ %F\

" 마지막 수정 위치에서 시작
au BufReadPost *
\ if line("'\"") > 0 && line("'\"") <= line("$") |
\ exe "norm g`\"" |
\ endif

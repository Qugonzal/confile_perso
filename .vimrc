":set nocompatible
:syntax on
highlight OverLength ctermbg=darkred ctermfg=white guibg=#FFD9D9 
match OverLength /\%>80v.\+/ "highlight anything that exceed column 80
:set tabstop=4 "force tabulation size to 4 spaces
:set shiftwidth=4 "force indentation size to 4 spacesi
:set autoindent
:set smartindent
:set nu
:set rnu
:set visualbell
:set mouse=a

:set wildmenu
:set wildmode=list:longest
:set wildignore=*.o,*.swp
":set hidden

":::::::::: MACRO MAPPING KEYS ::::::::::
"##### Normal Mode #####
:nmap t bvw<LEFT>"ty:stag <C-R>t<RETURN>

:nmap <backspace> <left><del>
:nmap <return> i<return><esc>

:nmap <S-up> :bn<return>
:nmap <S-down> :bp<return>

:nmap <S-right> <C-w>w
:nmap <S-left> <C-w>W

:nmap T :vsplit<return>

"##### Insert Mode #####
:inoremap " ""<left>
:inoremap ( ()<left>
:inoremap [ []<left>

:inoremap {{ {<return><return>}<up><tab>

:imap <C-c> yyp

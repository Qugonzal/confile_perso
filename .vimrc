":set nocompatible
:syntax on
:set autoindent
:set smartindent
:set nu
:set rnu
:set visualbell
:set mouse=a
:set cc=80

:set wildmenu
:set wildmode=list:longest
:set wildignore=*.o,*.swp
":set hidden

":::::::::: MACRO MAPPING KEYS ::::::::::
"##### Mode Normal #####
:nmap <backspace> 	<left><del>
:nmap <return> 		i<return><esc>

:nmap <S-up> 		:bn<return>
:nmap <S-down> 		:bp<return>

:nmap <S-right> 	<C-w>w
:nmap <S-left> 		<C-w>W

:nmap T 		:vsplit<return>

"##### Mode insertion #####
:inoremap	" 	""<left>
:inoremap	( 	()<left>
:inoremap	[ 	[]<left>

:inoremap	{{ 	{<return><return>}<up><tab>

:imap 		<C-y> 	<esc>yypi


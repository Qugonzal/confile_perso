":set nocompatible
:syntax on
highlight OverLength ctermbg=darkred ctermfg=white guibg=#FFD9D9 
match OverLength /\%>80v.\+/ "highlight anything that exceed column 80
:set tabstop=4 "force tabulation size to 4 spaces
:set shiftwidth=4 "force indentation size to 4 spaces
:set autoindent
:set smartindent
:set nu
:set rnu
":set visualbell
:set mouse=a

:set wildmenu
:set wildmode=list:longest
:set wildignore=*.o,*.swp
":set hidden
"set noeol

":::::::::: MACRO MAPPING KEYS ::::::::::
"##### Normal Mode #####
:nmap	t						bvw<LEFT>"ty:tag <C-R>t<RETURN>
:nmap	rt						bvw<LEFT>"ty:stag <C-R>t<RETURN>

:nmap	<backspace>				<left><del>
:nmap	<return> 				i<return><esc>

:nmap	<S-up>					:bn<return>
:nmap	<S-down>				:bp<return>
:nmap	<						:bd<return>:vsp<return>
:nmap	>						:w<return>:vsp<return><C-w>w:bd<return>

:nmap	<S-left>				<C-w>W
:nmap	<S-right>				<C-w>w

:nmap	T						:vsplit<return>
:nmap	r<up><down>				:vsplit<return>
:nmap	r<left><down><right>	:split<return>


"##### Visual Mode #####
vnoremap	"" 	<Esc>`>a"<Esc>`<i"<Esc>
vnoremap	cc	<Esc>`>a<return>*/<Esc>`<i<return><up>/*<down><esc>^
vnoremap	xcc	<Esc>`>a<backspace><backspace><backspace><Esc>`<i<del><del><del><esc>

"##### Insert Mode #####
:inoremap	""		""<left>
:inoremap	''		''<left>
:inoremap	((		()<left>
:inoremap	[[		[]<left>

:inoremap	{{		{<return><return>}<up><tab>

inoremap	//*		*/<esc>0i<return><up>**<space><esc>0i<return><up>/*<down><esc>$a

:imap		<C-c>	yyp
:imap 		<C-v> 	<esc>pi

set number

"set tabs to be inserted as spaces
set expandtab

"set indent to 4 spaces
set tabstop=2

"set vim to automatically indent to the indentation level of the previous line
"set smartindent
set autoindent

"set shiftwidth (the amount indented when '>>' or '<<' is pressed) to 4 spaces
set shiftwidth=2

"view characters at the end of lines
"set list

"collapse (fold) based on indent level
set foldmethod=indent

"open files with no folds (all text visible)
set foldlevelstart=99

set foldnestmax=10
set nofoldenable
set foldlevel=1

"scroll with j/k when searching through autocomplete options
inoremap <expr> j ((pumvisible())?("\<C-n>"):("j"))
inoremap <expr> k ((pumvisible())?("\<C-p>"):("k"))

au BufRead, BufNewFile *.jinja setfiletype html 
set t_kb=

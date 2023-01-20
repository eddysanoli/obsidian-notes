" .obsidian.vimrc
"
" A small .vimrc for Obsidian vim bindings
"
" To enable this file, you must install the Vimrc Support plugin for Obsidian:
" https://github.com/esm7/obsidian-vimrc-support
"_________________________________________________________________________

" Use jk as a way to return back to normal mode
imap jk <Esc>

" Space as leader
map <Space> <Leader>

" j and k navigate visual lines rather than logical ones
nmap j gj
nmap k gk
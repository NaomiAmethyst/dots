" Vim syntax file
" Language: okta-iptables rules file
" Maintainer: Jacobi Carter
" Latest Revision: 06 April 2016

" To install me:
" Copy me to ~/.vim/syntax/ipr.vim
" Create a new file in ~/.vim/ftdetect/ipr.vim with this line:
" au BufRead,BufNewFile *.ipr set filetype=ipr
"
" If you want to install me as a pathogen bundle:
" Copy me to ~/.vim/bundle/okta-iptables/syntax/ipr.vim
" Create a new file in ~/.vim/bundle/okta-iptables/ftdetect/ipr.vim with this
" line:
" au BufRead,BufNewFile *.ipr set filetype=ipr

if exists("b:current_syntax")
  finish
endif

syn match iprMacro '[A-Z0-9_]\+'

syn match iprConstant '[a-z0-9][a-z0-9.:-]*'

syn keyword iprTodo contained TODO FIXME XXX NOTE
syn match iprComment "//.*$" contains=iprTodo
syn match iprComment "#.*$" contains=iprTodo
syn region iprComment start='/\*' end='\*/' contains=iprTodo
syn keyword iprScope sector quadrant account slice cell installation aws_region
syn match iprPort '\(tcp\|udp\|icmp\)/\(\d*\-\d*\|\d*\|\-\)'
syn keyword iprVia ipsec unencrypted
syn keyword iprOps , ;
syn match iprOps '-\>'
syn keyword iprKeyword in nextgroup=iprScope
syn keyword iprKeyword on nextgroup=iprPort
syn match iprKeyword 'within\ same' nextgroup=iprScope
syn keyword iprKeyword all any
syn match iprKeyword '\*'
syn keyword iprKeyword over nextgroup=iprVia
syn match iprCidr '\(\([0-9]\|[1-9][0-9]\|1[0-9]\{2\}\|2[0-4][0-9]\|25[0-5]\)\.\)\{3\}\([0-9]\|[1-9][0-9]\|1[0-9]\{2\}\|2[0-4][0-9]\|25[0-5]\)\/\([1-2][0-9]\|3[0-2]\|[0-9]\)'
syn match iprPreProc '^\s*#.*$'
syn region iprComment start='#if 0' end='#endif' contains=iprTodo

let b:current_syntax = "ipr"

hi def link iprTodo Todo
hi def link iprComment Comment
hi def link iprKeyword Keyword
hi def link iprPort Number
hi def link iprScope Type
hi def link iprOps Operator
hi def link iprVia Label
hi def link iprCidr Number
hi def link iprMacro Constant
hi def link iprConstant String
hi def link iprPreProc PreProc

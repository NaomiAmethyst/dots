" wombat_amethyst.vim — Wombat, re-centred on an amethyst terminal locus
"
" A descendant of Lars Nielsen's wombat. Wombat's character is preserved:
" low contrast, a *lifted* (not near-black) background, italic comments and
" strings, an italic statusline, and its small hue economy (one warm class
" for literals + preproc, one family for identifiers/types/functions, one for
" keywords, one for strings). What changed is the locus: every family is
" rotated into the blue -> violet -> magenta band, with a soft coral kept for
" literals and a teal-green for strings so syntax stays legible. Diffs use the
" green/red convention, tinted cool.
"
" Built for truecolor: `set termguicolors`. A 256-colour fallback is provided.
" Normal bg is a lifted violet-gray (#211b2e) to keep Wombat's softness; set
" Normal guibg=#080010 to match your terminal exactly, and guifg=#bb99ff to
" match its foreground.

set background=dark
hi clear
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = "wombat_amethyst"

" ---- base -----------------------------------------------------------------
hi Normal        guifg=#d9cef2 guibg=#211b2e ctermfg=189 ctermbg=235 gui=NONE cterm=NONE
hi NormalNC      guifg=#d9cef2 guibg=#211b2e ctermfg=189 ctermbg=235
hi Cursor        guifg=#211b2e guibg=#b89af0 ctermfg=235 ctermbg=141
hi lCursor       guifg=#211b2e guibg=#b89af0 ctermfg=235 ctermbg=141
hi CursorLine    guibg=#2a2340 ctermbg=236 gui=NONE cterm=NONE
hi CursorColumn  guibg=#2a2340 ctermbg=236
hi ColorColumn   guibg=#2a2340 ctermbg=236
hi CursorLineNr  guifg=#cf9ae0 guibg=#2a2340 ctermfg=176 ctermbg=236 gui=NONE cterm=NONE
hi LineNr        guifg=#6a5f88 guibg=#17111f ctermfg=60  ctermbg=233
hi SignColumn    guifg=#6a5f88 guibg=#211b2e ctermfg=60  ctermbg=235
hi FoldColumn    guifg=#8a7fa0 guibg=#17111f ctermfg=103 ctermbg=233
hi VertSplit     guifg=#3a3252 guibg=#3a3252 ctermfg=237 ctermbg=237
hi NonText       guifg=#3e3656 ctermfg=237 gui=NONE
hi EndOfBuffer   guifg=#2a2440 ctermfg=236
hi SpecialKey    guifg=#6a5f88 ctermfg=60  gui=NONE
hi Whitespace    guifg=#3e3656 ctermfg=237
hi Conceal       guifg=#6a5f88 ctermfg=60

" ---- selection / search ---------------------------------------------------
hi Visual        guibg=#38305a ctermbg=238 gui=NONE cterm=NONE
hi VisualNOS     guibg=#38305a ctermbg=238
hi Search        guifg=#1a1428 guibg=#d0a0e8 ctermfg=235 ctermbg=182
hi IncSearch     guifg=#1a1428 guibg=#ecc0ec ctermfg=235 ctermbg=218 gui=NONE cterm=NONE
hi CurSearch     guifg=#1a1428 guibg=#ecc0ec ctermfg=235 ctermbg=218
hi MatchParen    guifg=#e6dcff guibg=#4e4080 ctermfg=189 ctermbg=61 gui=BOLD cterm=BOLD

" ---- messages / ui --------------------------------------------------------
hi ErrorMsg      guifg=#f3dceb guibg=#6e2e4a ctermfg=224 ctermbg=95 gui=NONE cterm=NONE
hi WarningMsg    guifg=#e09a96 ctermfg=174 gui=NONE cterm=NONE
hi ModeMsg       guifg=#95a0ee ctermfg=111 gui=BOLD cterm=BOLD
hi MoreMsg       guifg=#95a0ee ctermfg=111 gui=BOLD cterm=BOLD
hi Question      guifg=#95a0ee ctermfg=111 gui=BOLD cterm=BOLD
hi Title         guifg=#cf9ae0 ctermfg=176 gui=BOLD cterm=BOLD
hi Directory     guifg=#8fd4b0 ctermfg=115 gui=NONE
hi Folded        guifg=#b0a6cc guibg=#2e2746 ctermfg=146 ctermbg=236 gui=NONE
hi WildMenu      guifg=#1a1428 guibg=#d0a0e8 ctermfg=235 ctermbg=182 gui=BOLD cterm=BOLD

hi StatusLine    guifg=#e0d6f5 guibg=#3a3252 ctermfg=189 ctermbg=237 gui=italic cterm=NONE
hi StatusLineNC  guifg=#8a7fa0 guibg=#2a2340 ctermfg=103 ctermbg=236 gui=NONE cterm=NONE
hi TabLine       guifg=#9a8ec8 guibg=#2a2340 ctermfg=103 ctermbg=236 gui=NONE cterm=NONE
hi TabLineSel    guifg=#e6dcff guibg=#3a3252 ctermfg=189 ctermbg=237 gui=BOLD cterm=BOLD
hi TabLineFill   guibg=#17111f ctermbg=233

" ---- popup menu -----------------------------------------------------------
hi Pmenu         guifg=#d9cef2 guibg=#2e2746 ctermfg=189 ctermbg=236
hi PmenuSel      guifg=#1a1428 guibg=#cfa0e8 ctermfg=235 ctermbg=182 gui=NONE cterm=NONE
hi PmenuSbar     guibg=#3a3252 ctermbg=237
hi PmenuThumb    guibg=#4e4080 ctermbg=61

" ---- diffs (green/red kept, tinted cool) ----------------------------------
hi DiffAdd       guifg=#e0d6f5 guibg=#1c3a2a ctermfg=189 ctermbg=23
hi DiffChange    guifg=#e0d6f5 guibg=#232c4c ctermfg=189 ctermbg=17
hi DiffDelete    guifg=#e0d6f5 guibg=#46202e ctermfg=189 ctermbg=52
hi DiffText      guifg=#fdeaff guibg=#3c2658 ctermfg=189 ctermbg=54 gui=NONE cterm=NONE

" ---- spell ----------------------------------------------------------------
hi SpellBad      guisp=#db8aae gui=undercurl cterm=undercurl
hi SpellRare     guisp=#cf9ae0 gui=undercurl cterm=undercurl
hi SpellLocal    guisp=#8fd4b0 gui=undercurl cterm=undercurl
hi SpellCap      guisp=#6fb6cf gui=undercurl cterm=undercurl

" ---- syntax ---------------------------------------------------------------
hi Comment        guifg=#8f86ab ctermfg=103 gui=italic cterm=NONE
hi SpecialComment guifg=#9a8ec8 ctermfg=103 gui=italic cterm=NONE
hi Constant       guifg=#d6a888 ctermfg=180 gui=NONE
hi String         guifg=#8fd4b0 ctermfg=115 gui=italic cterm=NONE
hi Character      guifg=#8fd4b0 ctermfg=115
hi Number         guifg=#d99a96 ctermfg=174
hi Float          guifg=#d99a96 ctermfg=174
hi Boolean        guifg=#d6a888 ctermfg=180
hi Identifier     guifg=#cfa0e8 ctermfg=182 gui=NONE
hi Function       guifg=#cfa0e8 ctermfg=182 gui=NONE
hi Statement      guifg=#95a0ee ctermfg=111 gui=NONE
hi Conditional    guifg=#95a0ee ctermfg=111
hi Repeat         guifg=#95a0ee ctermfg=111
hi Label          guifg=#95a0ee ctermfg=111
hi Keyword        guifg=#95a0ee ctermfg=111
hi Operator       guifg=#9a8fd0 ctermfg=103
hi Exception      guifg=#cf9ae0 ctermfg=176
hi PreProc        guifg=#d99a96 ctermfg=174
hi Include        guifg=#d99a96 ctermfg=174
hi Define         guifg=#d99a96 ctermfg=174
hi Macro          guifg=#d99a96 ctermfg=174
hi PreCondit      guifg=#d99a96 ctermfg=174
hi Type           guifg=#cfa0e8 ctermfg=182 gui=NONE
hi StorageClass   guifg=#cfa0e8 ctermfg=182
hi Structure      guifg=#cfa0e8 ctermfg=182
hi Typedef        guifg=#cfa0e8 ctermfg=182
hi Special        guifg=#cf9ae0 ctermfg=176
hi SpecialChar    guifg=#cf9ae0 ctermfg=176
hi Tag            guifg=#cf9ae0 ctermfg=176
hi Delimiter      guifg=#9a8fd0 ctermfg=103
hi Debug          guifg=#cf9ae0 ctermfg=176
hi Underlined     guifg=#9cc0ea ctermfg=152 gui=underline cterm=underline
hi Ignore         guifg=#3e3656 ctermfg=237
hi Error          guifg=#f3dceb guibg=#6e2e4a ctermfg=224 ctermbg=95
hi Todo           guifg=#1a1428 guibg=#d0a868 ctermfg=235 ctermbg=179 gui=italic,bold cterm=BOLD

" ---- treesitter / lsp (light links so nvim picks up the locus too) --------
" Vim rejects '@' in a group name (W18); these are Neovim treesitter / LSP
" groups, so only define them when running under Neovim.
if has('nvim')
hi link @variable        Identifier
hi link @variable.member Identifier
hi link @function        Function
hi link @function.call   Function
hi link @keyword         Keyword
hi link @keyword.operator Operator
hi link @string          String
hi link @comment         Comment
hi link @type            Type
hi link @number          Number
hi link @boolean         Boolean
hi link @constant        Constant
hi link @property        Identifier
hi link @parameter       Constant
hi link @punctuation     Delimiter
hi link DiagnosticError  ErrorMsg
hi link DiagnosticWarn   WarningMsg
hi link DiagnosticInfo   ModeMsg
hi link DiagnosticHint   Comment
endif

" vim: set et sw=2 :

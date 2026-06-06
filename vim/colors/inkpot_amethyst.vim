" inkpot_amethyst.vim — inkpot, re-centred on an amethyst terminal locus
"
" A descendant of Ciaran McCreesh's inkpot. The structure and the
" wide-hue / high-contrast approach to syntax highlighting are kept; what
" changed is the hue locus. The editor chrome and the most frequent tokens
" now sit in the blue -> violet -> magenta band of an amethyst terminal
" palette. A muted warm family is retained for literals (constants, numbers)
" and a cool teal-green for strings, so token separation survives. Diffs keep
" the green/red convention, tinted cool.
"
" Built for truecolor: `set termguicolors`. A 256-colour approximation is
" provided as a fallback. Normal bg matches a #080010 terminal so the editor
" is seamless inside it; raise guibg (e.g. #120c22) if you want a softer field,
" and set Normal guifg=#bb99ff to match the terminal fg exactly.

set background=dark
hi clear
if exists("syntax_on")
  syntax reset
endif
let colors_name = "inkpot_amethyst"

" ---- base -----------------------------------------------------------------
hi Normal        guifg=#c3b2ea guibg=#120c22 ctermfg=182 ctermbg=232 gui=NONE cterm=NONE
hi NormalNC      guifg=#c3b2ea guibg=#120c22 ctermfg=182 ctermbg=232
hi Cursor        guifg=#080010 guibg=#bb99ff ctermfg=232 ctermbg=141
hi CursorLine    guibg=#15102a ctermbg=234 gui=NONE cterm=NONE
hi CursorColumn  guibg=#15102a ctermbg=234
hi ColorColumn   guibg=#1a1330 ctermbg=235
hi CursorLineNr  guifg=#c98ae8 guibg=#15102a ctermfg=177 ctermbg=234 gui=BOLD cterm=BOLD
hi LineNr        guifg=#574c70 guibg=#0f0a1e ctermfg=60  ctermbg=233
hi SignColumn    guifg=#574c70 guibg=#080010 ctermfg=60  ctermbg=232
hi FoldColumn    guifg=#6f6494 guibg=#0f0a1e ctermfg=60  ctermbg=233
hi VertSplit     guifg=#2e2650 guibg=#2e2650 ctermfg=237 ctermbg=237
hi NonText       guifg=#2f2848 ctermfg=237 gui=NONE
hi EndOfBuffer   guifg=#1a142e ctermfg=235
hi SpecialKey    guifg=#6f6494 ctermfg=60  gui=NONE
hi Whitespace    guifg=#2f2848 ctermfg=237
hi Conceal       guifg=#574c70 ctermfg=60

" ---- selection / search ---------------------------------------------------
hi Visual        guibg=#322a55 ctermbg=60 gui=NONE cterm=NONE
hi VisualNOS     guibg=#322a55 ctermbg=60
hi Search        guifg=#1a1228 guibg=#c98ae8 ctermfg=232 ctermbg=176
hi IncSearch     guifg=#1a1228 guibg=#e8b0e0 ctermfg=232 ctermbg=218 gui=NONE cterm=NONE
hi CurSearch     guifg=#1a1228 guibg=#e8b0e0 ctermfg=232 ctermbg=218
hi MatchParen    guifg=#ddccff guibg=#5f4fb0 ctermfg=231 ctermbg=61

" ---- messages / ui --------------------------------------------------------
hi ErrorMsg      guifg=#f3d8e8 guibg=#6e2e4e ctermfg=224 ctermbg=95  gui=BOLD cterm=BOLD
hi WarningMsg    guifg=#1a1228 guibg=#d0986a ctermfg=232 ctermbg=173 gui=BOLD cterm=BOLD
hi ModeMsg       guifg=#8f9aee ctermfg=104 gui=BOLD cterm=BOLD
hi MoreMsg       guifg=#8f9aee ctermfg=104 gui=BOLD cterm=BOLD
hi Question      guifg=#8f9aee ctermfg=104 gui=BOLD cterm=BOLD
hi Title         guifg=#d07ac0 ctermfg=169 gui=BOLD cterm=BOLD
hi Directory     guifg=#8fd0bd ctermfg=115 gui=NONE
hi Folded        guifg=#b9a8e0 guibg=#2a1f52 ctermfg=146 ctermbg=237 gui=NONE
hi WildMenu      guifg=#f0e8ff guibg=#5f4fb0 ctermfg=231 ctermbg=61  gui=BOLD cterm=BOLD

hi StatusLine    guifg=#d8cdf0 guibg=#2e2650 ctermfg=189 ctermbg=237 gui=BOLD cterm=BOLD
hi StatusLineNC  guifg=#8a7eb8 guibg=#1a1430 ctermfg=103 ctermbg=235 gui=NONE cterm=NONE
hi TabLine       guifg=#9a8ec8 guibg=#1a1430 ctermfg=103 ctermbg=235 gui=NONE cterm=NONE
hi TabLineSel    guifg=#e6dcff guibg=#2e2650 ctermfg=231 ctermbg=237 gui=BOLD cterm=BOLD
hi TabLineFill   guibg=#0f0a1e ctermbg=233

" ---- popup menu -----------------------------------------------------------
hi Pmenu         guifg=#c3b2ea guibg=#241c3e ctermfg=182 ctermbg=235
hi PmenuSel      guifg=#f0e8ff guibg=#5f4fb0 ctermfg=231 ctermbg=61  gui=BOLD cterm=BOLD
hi PmenuSbar     guibg=#2e2650 ctermbg=237
hi PmenuThumb    guibg=#5f4fb0 ctermbg=61

" ---- diffs (green/red kept, tinted cool) ----------------------------------
hi DiffAdd       guifg=#e4d8f5 guibg=#163a2c ctermfg=189 ctermbg=23
hi DiffChange    guifg=#e4d8f5 guibg=#1f2a4a ctermfg=189 ctermbg=17
hi DiffDelete    guifg=#e4d8f5 guibg=#44202e ctermfg=189 ctermbg=52
hi DiffText      guifg=#fdeaff guibg=#3a2456 ctermfg=231 ctermbg=54 gui=NONE cterm=NONE

" ---- spell ----------------------------------------------------------------
hi SpellBad      guisp=#d98ab8 gui=undercurl cterm=undercurl
hi SpellRare     guisp=#c98ae8 gui=undercurl cterm=undercurl
hi SpellLocal    guisp=#8fd0bd gui=undercurl cterm=undercurl
hi SpellCap      guisp=#6fb6cf gui=undercurl cterm=undercurl

" ---- syntax ---------------------------------------------------------------
hi Comment        guifg=#786d9e ctermfg=97  gui=NONE cterm=NONE
hi SpecialComment guifg=#9a8ec8 ctermfg=103
hi Constant       guifg=#d6a882 ctermfg=180 gui=NONE
hi String         guifg=#8fd0bd ctermfg=115 gui=NONE
hi Character      guifg=#8fd0bd ctermfg=115
hi Number         guifg=#d99a9a ctermfg=174
hi Float          guifg=#d99a9a ctermfg=174
hi Boolean        guifg=#d6a882 ctermfg=180
hi Identifier     guifg=#b58af0 ctermfg=140 gui=NONE
hi Function       guifg=#c89af2 ctermfg=141 gui=NONE
hi Statement      guifg=#8f9aee ctermfg=104 gui=NONE
hi Conditional    guifg=#8f9aee ctermfg=104
hi Repeat         guifg=#8f9aee ctermfg=104
hi Label          guifg=#8f9aee ctermfg=104
hi Keyword        guifg=#8f9aee ctermfg=104
hi Operator       guifg=#9a8fd0 ctermfg=103
hi Exception      guifg=#d07ac0 ctermfg=169
hi PreProc        guifg=#6fb6cf ctermfg=74
hi Include        guifg=#6fb6cf ctermfg=74
hi Define         guifg=#6fb6cf ctermfg=74
hi Macro          guifg=#6fb6cf ctermfg=74
hi PreCondit      guifg=#6fb6cf ctermfg=74
hi Type           guifg=#d49ae8 ctermfg=176 gui=NONE
hi StorageClass   guifg=#d49ae8 ctermfg=176
hi Structure      guifg=#d49ae8 ctermfg=176
hi Typedef        guifg=#d49ae8 ctermfg=176
hi Special        guifg=#c98ae8 ctermfg=177
hi SpecialChar    guifg=#c98ae8 ctermfg=177
hi Tag            guifg=#c98ae8 ctermfg=177
hi Delimiter      guifg=#9a8fd0 ctermfg=103
hi Debug          guifg=#d07ac0 ctermfg=169
hi Underlined     guifg=#9cc0ea ctermfg=152 gui=underline cterm=underline
hi Ignore         guifg=#574c70 ctermfg=60
hi Error          guifg=#f3d8e8 guibg=#6e2e4e ctermfg=224 ctermbg=95
hi Todo           guifg=#1a1228 guibg=#d0a060 ctermfg=232 ctermbg=179 gui=BOLD cterm=BOLD

" ---- treesitter / lsp (light links so nvim picks up the locus too) --------
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

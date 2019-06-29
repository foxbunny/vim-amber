" =============================================================================
" Name: vim-amber
" Amber theme for Vim
" -----------------------------------------------------------------------------
"
" This is a theme that simulates the retro PC amber monochrome CRT. It has
" pretty much no syntax-specific variations in color and is, instead, focusing
" on providing variations for the editor elements themselves (e.g., line
" numbers, color column, etc).
" 
" This theme can toggle between light and dark mode by setting the `background`
" variable to "light" or "dark".
"
" Some tricks and code borrowed from Lucious theme by Jonathan Filip.
" =============================================================================

highlight clear

if exists("syntax_on")
  syntax reset
endif

let s:style = &background
let g:colors_name="amber"

let s:normal_items = [
      \ "ColorColumn", "Comment", "Conceal", "Constant", "Cursor", "CursorColumn",
      \ "CursorIM", "CursorLine", "CursorLineNr", "DiffAdd", "DiffChange",
      \ "DiffDelete", "Directory", "Error", "ErrorMsg", "Identifier",
      \ "IncSearch", "LineNr", "MatchParen", "ModeMsg", "MoreMsg",
      \ "NonText", "Pmenu", "PmenuSbar", "PmenuSel",
      \ "PmenuThumb", "PreProc", "Question", "Search", "SignColumn",
      \ "Special", "SpecialKey", "Statement", "StatusLineNC", "TabLine",
      \ "TabLineFill", "Todo", "Type", "VertSplit", "Visual",
      \ "WarningMsg", "WildMenu",
      \ ]

let s:bold_items = [
      \ "DiffText", "FoldColumn", "Folded", "StatusLine", "TabLineSel",
      \ "Title", "CursorLineNr",
      \ ]

let s:underline_items = [
      \ "Underlined", "VisualNOS"
      \ ]

let s:undercurl_items = [
      \ "SpellBad", "SpellCap", "SpellLocal", "SpellRare"
      \ ]

hi clear Normal
if s:style == "dark"
  for s:item in s:normal_items + s:bold_items + s:underline_items + s:undercurl_items
      exec "hi " . s:item . " guifg=#fc9505 guibg=#140b05 gui=none"
                  \ . " ctermfg=NONE ctermbg=NONE cterm=none term=none"
  endfor

  " Normal text
  hi Normal guifg=#fc9505 guibg=#140b05

  " Inverted
  hi Cursor guifg=bg guibg=fg
  hi CursorIM guifg=bg guibg=fg
  hi CursorColumn guifg=bg guibg=fg
  hi CursorLineNr guifg=bg guibg=fg
  hi Visual guifg=bg guibg=fg
  hi VertSplit guifg=bg guibg=fg
  hi StatusLine guifg=bg guibg=fg

  " Special
  hi CursorLine guibg=#1c1008
  hi ColorColumn guibg=#1c1008
  hi NonText guibg=#1c1008

  " Red
  hi SpellBad guifg=#ff0000
  hi Error guifg=#ff0000
else
  for s:item in s:normal_items + s:bold_items + s:underline_items + s:undercurl_items
      exec "hi " . s:item . " guibg=#fc9505 guifg=#140b05 gui=none"
                  \ . " ctermfg=NONE ctermbg=NONE cterm=none term=none"
  endfor

  " Normal text
  hi Normal guibg=#fc9505 guifg=#140b05

  " Inverted
  hi Cursor guifg=bg guibg=fg
  hi CursorIM guifg=bg guibg=fg
  hi CursorColumn guifg=bg guibg=fg
  hi CursorLineNr guifg=bg guibg=fg
  hi Visual guifg=bg guibg=fg
  hi VertSplit guifg=bg guibg=fg
  hi StatusLine guifg=bg guibg=fg

  " Special
  hi CursorLine guibg=#e58806
  hi ColorColumn guibg=#e58806
  hi NonText guibg=#e58806
  
  " Red
  hi SpellBad guibg=#ff0000
  hi Error guibg=#ff0000
endif

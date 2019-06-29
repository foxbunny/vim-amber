highlight clear
if exists("syntax_on")
  syntax reset
endif

set background=dark
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

for s:item in s:normal_items + s:bold_items + s:underline_items + s:undercurl_items
    exec "hi " . s:item . " guifg=#fc7c14 guibg=#260d03 gui=none"
                \ . " ctermfg=NONE ctermbg=NONE cterm=none term=none"
endfor

hi clear Normal

" Normal text
hi Normal guifg=#fc7c14 guibg=#260d03

" Inverted
hi Cursor guifg=#260d03 guibg=#fc7c14
hi CursorIM guifg=#260d03 guibg=#fc7c14
hi CursorColumn guifg=#260d03 guibg=#fc7c14
hi Visual guifg=#260d03 guibg=#fc7c14
hi LineNr guifg=#260d03 guibg=#fc7c14

" Red
hi SpellBad guifg=#ff0000
hi Error guifg=#ff0000

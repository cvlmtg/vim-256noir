" 256 noir. Basically: dark background, numerals & errors red,
" rest different shades of gray.

highlight clear
if exists('syntax_on')
  syntax reset
endif

let g:colors_name = '256_noir'

if !has('gui_running') && &t_Co != 256
  finish
endif

function! s:Hi(group, bg, fg, attr)
  exec printf('hi %s guifg=%s guibg=%s gui=%s ctermfg=%s ctermbg=%s cterm=%s',
        \ a:group, a:fg[1], a:bg[1], a:attr, a:fg[0], a:bg[0], a:attr)
endfunction

" https://jonasjacek.github.io/colors/

let s:NONE       = [ 'NONE', 'NONE'    ]
let s:WHITE      = [ 255,    '#eeeeee' ]
let s:GRAY       = [ 250,    '#bcbcbc' ]
let s:MID_GRAY   = [ 245,    '#8a8a8a' ]
let s:DARK_GRAY  = [ 234,    '#1c1c1c' ]
let s:BLACK      = [ 16,     '#000000' ]
let s:BRIGHT_COL = [ 214,    '#ffaf00' ]
let s:MID_COL    = [ 172,    '#d78700' ]
let s:DARK_COL   = [ 136,    '#af8700' ]
let s:PURPLE     = [ 98,     '#875fd7' ]
let s:ADD        = [ 120,    '#87ff87' ]
let s:DEL        = [ 167,    '#d75f5f' ]
let s:CHANGE     = s:PURPLE
let s:UI_FG      = s:MID_GRAY
let s:UI_BG      = s:BLACK

" https://groups.google.com/forum/#!msg/vim_dev/QUzGeJsx-Cs/nEfVWxhlUq4J

call s:Hi('Normal', s:UI_BG, s:GRAY, 'NONE')
set background=dark

call s:Hi('Boolean',        s:NONE,     s:WHITE,      'NONE')
call s:Hi('Character',      s:NONE,     s:BRIGHT_COL, 'NONE')
call s:Hi('Constant',       s:NONE,     s:WHITE,      'bold')
call s:Hi('Conceal',        s:MID_GRAY, s:UI_BG,      'underline')
call s:Hi('Debug',          s:NONE,     s:GRAY,       'NONE')
call s:Hi('Define',         s:NONE,     s:WHITE,      'NONE')
call s:Hi('Delimiter',      s:NONE,     s:GRAY,       'NONE')
call s:Hi('Error',          s:DARK_COL, s:WHITE,      'NONE')
call s:Hi('Exception',      s:NONE,     s:GRAY,       'NONE')
call s:Hi('Float',          s:NONE,     s:BRIGHT_COL, 'NONE')
call s:Hi('Function',       s:NONE,     s:WHITE,      'NONE')
call s:Hi('Include',        s:NONE,     s:WHITE,      'NONE')
call s:Hi('Label',          s:NONE,     s:GRAY,       'NONE')
call s:Hi('Macro',          s:NONE,     s:GRAY,       'NONE')
call s:Hi('Number',         s:NONE,     s:BRIGHT_COL, 'NONE')
call s:Hi('Operator',       s:NONE,     s:WHITE,      'NONE')
call s:Hi('PreCondit',      s:NONE,     s:WHITE,      'NONE')
call s:Hi('Repeat',         s:NONE,     s:WHITE,      'NONE')
call s:Hi('SpecialChar',    s:NONE,     s:WHITE,      'NONE')
call s:Hi('SpecialComment', s:NONE,     s:MID_GRAY,   'NONE')
call s:Hi('String',         s:NONE,     s:MID_GRAY,   'NONE')
call s:Hi('Structure',      s:NONE,     s:WHITE,      'NONE')
call s:Hi('Tag',            s:NONE,     s:BRIGHT_COL, 'NONE')
call s:Hi('Todo',           s:NONE,     s:WHITE,      'NONE')
call s:Hi('Typedef',        s:NONE,     s:WHITE,      'NONE')

call s:Hi('Comment',        s:NONE,     s:MID_GRAY,   'NONE')
call s:Hi('Conditional',    s:NONE,     s:WHITE,      'NONE')
call s:Hi('Directory',      s:NONE,     s:WHITE,      'bold')
call s:Hi('Identifier',     s:NONE,     s:WHITE,      'bold')
call s:Hi('Keyword',        s:NONE,     s:WHITE,      'NONE')
call s:Hi('PreProc',        s:NONE,     s:WHITE,      'bold')
call s:Hi('Special',        s:NONE,     s:WHITE,      'bold')
call s:Hi('SpecialKey',     s:NONE,     s:WHITE,      'bold')
call s:Hi('Statement',      s:NONE,     s:WHITE,      'NONE')
call s:Hi('StorageClass',   s:NONE,     s:WHITE,      'NONE')
call s:Hi('Type',           s:NONE,     s:WHITE,      'NONE')
hi! link Title Directory
hi! link MoreMsg Comment
hi! link Question Comment

" interface

call s:Hi('Cursor',       s:WHITE,      s:BLACK,      'NONE')
call s:Hi('ErrorMsg',     s:BRIGHT_COL, s:DARK_GRAY,  'NONE')
call s:Hi('FoldColumn',   s:UI_BG,      s:GRAY,       'NONE')
call s:Hi('Folded',       s:NONE,       s:BRIGHT_COL, 'NONE')
call s:Hi('IncSearch',    s:GRAY,       s:BLACK,      'NONE')
call s:Hi('CursorLineNr', s:UI_BG,      s:BRIGHT_COL, 'NONE')
call s:Hi('LineNr',       s:UI_BG,      s:UI_FG,      'NONE')
call s:Hi('ModeMsg',      s:UI_BG,      s:GRAY,       'NONE')
call s:Hi('Search',       s:PURPLE,     s:WHITE,      'NONE')
call s:Hi('Signcolumn',   s:UI_BG,      s:UI_FG,      'NONE')
call s:Hi('StatusLine',   s:MID_COL,    s:DARK_GRAY,  'bold')
call s:Hi('StatusLineNC', s:MID_GRAY,   s:UI_BG,      'NONE')
call s:Hi('VertSplit',    s:UI_BG,      s:UI_FG,      'NONE')
call s:Hi('Visual',       s:GRAY,       s:BLACK,      'NONE')
call s:Hi('VisualNOS',    s:GRAY,       s:BLACK,      'NONE')
call s:Hi('WarningMsg',   s:UI_BG,      s:BRIGHT_COL, 'NONE')
call s:Hi('WildMenu',     s:WHITE,      s:MID_GRAY,   'NONE')
hi! link NonText LineNr

if version >= 700
  call s:Hi('CursorColumn', s:UI_BG,     s:NONE,      'NONE')
  call s:Hi('CursorLine',   s:DARK_GRAY, s:NONE,      'NONE')
  call s:Hi('MatchParen',   s:PURPLE,    s:WHITE,     'NONE')
  call s:Hi('Pmenu',        s:MID_GRAY,  s:WHITE,     'NONE')
  call s:Hi('PmenuSbar',    s:GRAY,      s:UI_BG,     'NONE')
  call s:Hi('PmenuSel',     s:GRAY,      s:UI_BG,     'NONE')
  call s:Hi('PmenuThumb',   s:MID_GRAY,  s:DARK_GRAY, 'NONE')
  call s:Hi('TabLine',      s:UI_BG,     s:UI_FG,     'NONE')
  call s:Hi('TabLineFill',  s:UI_BG,     s:DARK_GRAY, 'NONE')
  call s:Hi('TabLineSel',   s:UI_BG,     s:GRAY,      'bold')
endif

if has("spell")
  call s:Hi('SpellBad',   s:NONE, s:DARK_COL, 'underline')
  call s:Hi('SpellCap',   s:NONE, s:NONE,     'underline')
  call s:Hi('SpellLocal', s:NONE, s:NONE,     'underline')
  call s:Hi('SpellRare',  s:NONE, s:MID_COL,  'underline')
endif

" diff

call s:Hi('DiffAdd',    s:NONE,   s:ADD,    'NONE')
call s:Hi('DiffChange', s:NONE,   s:CHANGE, 'NONE')
call s:Hi('DiffDelete', s:NONE,   s:DEL,    'NONE')
call s:Hi('DiffText',   s:CHANGE, s:UI_BG,  'NONE')

hi! link diffCommon   Statement
hi! link diffRemoved  DiffDelete
hi! link diffChanged  DiffChange
hi! link diffAdded    DiffAdd

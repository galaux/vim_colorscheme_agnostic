" 'Agnostic' VIm color scheme
"
" Unlike most of color scheme you will find out there, this one does only what
" it is supposed to do: bind VIm highlight zones to colors, but it does NOT
" define color values. This should be done by your terminal – usually in a
" ~/.Xresources file. This enables the use of your terminal colors inside VIm.
" This color scheme is thus color agnostic.

hi clear
syntax reset
let colors_name = "agnostic"

let s:black          =  0
let s:black_light    =  8
let s:red            =  1
let s:red_light      =  9
let s:green          =  2
let s:green_light    =  10
let s:yellow         =  3
let s:yellow_light   =  11
let s:blue           =  4
let s:blue_light     =  12
let s:magenta        =  5
let s:magenta_light  =  13
let s:cyan           =  6
let s:cyan_light     =  14
let s:white          =  7
let s:white_light    =  15

let s:none           =  "NONE"
let s:bold           =  "bold"
let s:underline      =  "underline"
let s:reverse        =  "reverse"
let s:italic         =  "italic"
let s:standout       =  "standout"

" used for the columns set with 'colorcolumn'
exec 'hi ColorColumn ctermbg=' . s:black . ' ctermfg=' . s:none . ' cterm=' . s:none

" placeholder characters substituted for concealed " text (see 'conceallevel')
exec 'hi Conceal ctermbg=' . s:black . ' ctermfg=' . s:green_light . ' cterm=' . s:none

" the character under the cursor
"exec 'hi Cursor ctermbg=' . s:none . ' ctermfg=' . s:none . ' cterm=' . s:reverse

" like Cursor, but used when in IME mode
exec 'hi CursorIM ctermbg=' . s:red . ' ctermfg=' . s:white_light . ' cterm=' . s:none

" the screen column that the cursor is in when 'cursorcolumn' is set
exec 'hi CursorColumn ctermbg=' . s:black . ' ctermfg=' . s:none . ' cterm=' . s:none

" the screen line that the cursor is in when 'cursorline' is set
exec 'hi CursorLine ctermbg=' . s:black . ' ctermfg=' . s:none . ' cterm=' . s:none

" Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.
exec 'hi CursorLineNr ctermbg=' . s:none . ' ctermfg=' . s:white . ' cterm=' . s:none

" directory names (and other special names in listings)
exec 'hi Directory ctermbg=' . s:none . ' ctermfg=' . s:blue . ' cterm=' . s:none

" diff mode: Added line
exec 'hi DiffAdd ctermbg=' . s:black . ' ctermfg=' . s:green . ' cterm=' . s:none

" diff mode: Changed line
exec 'hi DiffChange ctermbg=' . s:black . ' ctermfg=' . s:yellow . ' cterm=' . s:none

" diff mode: Deleted line
exec 'hi DiffDelete ctermbg=' . s:black . ' ctermfg=' . s:red . ' cterm=' . s:none

" diff mode: Changed text within a changed line
exec 'hi DiffText ctermbg=' . s:black . ' ctermfg=' . s:blue . ' cterm=' . s:none

" error messages on the command line
exec 'hi ErrorMsg ctermbg=' . s:red . ' ctermfg=' . s:none . ' cterm=' . s:none

" the column separating vertically split windows
exec 'hi VertSplit ctermbg=' . s:none . ' ctermfg=' . s:white_light . ' cterm=' . s:none

" line used for closed folds
exec 'hi Folded ctermbg=' . s:black . ' ctermfg=' . s:white_light . ' cterm=' . s:italic

" 'foldcolumn'
exec 'hi FoldColumn ctermbg=' . s:black . ' ctermfg=' . s:white . ' cterm=' . s:none

" column where signs are displayed
exec 'hi SignColumn ctermbg=' . s:black . ' ctermfg=' . s:white . ' cterm=' . s:none

" Line number for ":number" and ":#" commands, and when 'number' " or
" 'relativenumber' option is set.
exec 'hi LineNr ctermbg=' . s:black . ' ctermfg=' . s:white . ' cterm=' . s:none

" The character under the cursor or just before it, if it " is a paired
" bracket, and its match.
exec 'hi MatchParen ctermbg=' . s:white . ' ctermfg=' . s:none . ' cterm=' . s:none

" 'showmode' message (e.g., "-- INSERT --")
exec 'hi ModeMsg ctermbg=' . s:none . ' ctermfg=' . s:blue . ' cterm=' . s:none

" more-prompt
exec 'hi MoreMsg ctermbg=' . s:green . ' ctermfg=' . s:none . ' cterm=' . s:none

" '~' and '@' at the end of the window, characters from " 'showbreak' and other
" characters that do not really exist in the text (e.g., ">" displayed when a
" double-wide character doesn't fit at the end of the line).
exec 'hi NonText ctermbg=' . s:black . ' ctermfg=' . s:white_light . ' cterm=' . s:none

" normal text
exec 'hi Normal ctermbg=' . s:none . ' ctermfg=' . s:white_light . ' cterm=' . s:none

" Popup menu: normal item.
exec 'hi Pmenu ctermbg=' . s:white_light . ' ctermfg=' . s:black . ' cterm=' . s:none

" Popup menu: selected item.
exec 'hi PmenuSel ctermbg=' . s:white . ' ctermfg=' . s:black . ' cterm=' . s:none

" Popup menu: scrollbar.
exec 'hi PmenuSbar ctermbg=' . s:white_light . ' ctermfg=' . s:none . ' cterm=' . s:none

" Popup menu: Thumb of the scrollbar.
exec 'hi PmenuThumb ctermbg=' . s:white . ' ctermfg=' . s:none . ' cterm=' . s:none

" hit-enter prompt and yes/no questions
exec 'hi Question ctermbg=' . s:blue . ' ctermfg=' . s:none . ' cterm=' . s:none

" 'incsearch' highlighting; also used for the text replaced with ":s///c"
exec 'hi IncSearch ctermbg=' . s:none . ' ctermfg=' . s:yellow_light . ' cterm=' . s:reverse

" Last search pattern highlighting (see 'hlsearch').
" Also used for highlighting the current line in the quickfix window and similar
" items that need to stand out.
exec 'hi Search ctermbg=' . s:none . ' ctermfg=' . s:yellow  . ' cterm=' . s:reverse

" Meta and special keys listed with ":map", also for text used to show
" unprintable characters in the text, 'listchars'.
" Generally: text that is displayed differently from what it really is.
exec 'hi SpecialKey ctermbg=' . s:none . ' ctermfg=' . s:white_light . ' cterm=' . s:none

" Word that is not recognized by the spellchecker.
" This will be combined with the highlighting used otherwise.
exec 'hi SpellBad ctermbg=' . s:none . ' ctermfg=' . s:red . ' cterm=' . s:none

" Word that should start with a capital.
" This will be combined with the highlighting used otherwise.
exec 'hi SpellCap ctermbg=' . s:none . ' ctermfg=' . s:red . ' cterm=' . s:none

" Word that is recognized by the spellchecker as one that is used in another region.
" This will be combined with the highlighting used otherwise.
exec 'hi SpellLocal ctermbg=' . s:none . ' ctermfg=' . s:red . ' cterm=' . s:none

" Word that is recognized by the spellchecker as one that is hardly ever used.
" This will be combined with the highlighting used otherwise.
exec 'hi SpellRare ctermbg=' . s:none . ' ctermfg=' . s:red . ' cterm=' . s:none

" status line of current window
exec 'hi StatusLine ctermbg=' . s:blue . ' ctermfg=' . s:none . ' cterm=' . s:none

" status lines of not-current windows
" Note: if this is equal to "StatusLine" Vim will use "^^^" in the status line
" of the current window.
exec 'hi StatusLineNC ctermbg=' . s:white . ' ctermfg=' . s:black . ' cterm=' . s:none

" tab pages line, not active tab page label
exec 'hi TabLine ctermbg=' . s:black . ' ctermfg=' . s:white_light . ' cterm='. s:none

" tab pages line, where there are no labels
exec 'hi TabLineFill ctermbg=' . s:black . ' ctermfg=' . s:none . ' cterm=' . s:none

" tab pages line, active tab page label
exec 'hi TabLineSel ctermbg=' . s:none . ' ctermfg=' . s:white_light . ' cterm='. s:bold

" titles for output from ":set all", ":autocmd" etc.
exec 'hi Title ctermbg=' . s:none . ' ctermfg=' . s:white_light . ' cterm=' . s:bold

" Visual mode selection
exec 'hi Visual ctermbg=' . s:white . ' ctermfg=' . s:none . ' cterm=' . s:none

" Visual mode selection when vim is "Not Owning the Selection".
" Only X11 Gui's gui-x11 and xterm-clipboard supports this.
exec 'hi VisualNOS ctermbg=' . s:blue . ' ctermfg=' . s:white_light . ' cterm=' . s:none

" warning messages
exec 'hi WarningMsg ctermbg=' . s:yellow . ' ctermfg=' . s:none . ' cterm=' . s:none

" current match in 'wildmenu' completion
" the 'wildmenu' is the menu you hit TAB when entering a ':[command]'
exec 'hi WildMenu ctermbg=' . s:white . ' ctermfg=' . s:none . ' cterm=' . s:none

" Current font, background and foreground colors of the menus.
" Also used for the toolbar.
" Applicable highlight arguments: font, guibg, guifg.
" NOTE: For Motif and Athena the font argument actually
" specifies a fontset at all times, no matter if 'guifontset' is
" empty, and as such it is tied to the current when
" set.
exec 'hi Menu ctermbg=' . s:white . ' ctermfg=' . s:none . ' cterm=' . s:none

" Current background and foreground of the main window's scrollbars.
" Applicable highlight arguments: guibg, guifg.
exec 'hi Scrollbar ctermbg=' . s:white . ' ctermfg=' . s:white_light . ' cterm=' . s:none

" Current font, background and foreground of the tooltips.
" Applicable highlight arguments: font, guibg, guifg.
" NOTE: For Motif and Athena the font argument actually
" specifies a fontset at all times, no matter if 'guifontset' is
" empty, and as such it is tied to the current when
" set.
exec 'hi Tooltip ctermbg=' . s:white . ' ctermfg=' . s:none . ' cterm=' . s:none


" any comment
exec 'hi Comment ctermbg=' . s:none . ' ctermfg=' . s:white . ' cterm=' . s:none

" any constant
exec 'hi Constant ctermbg=' . s:none . ' ctermfg=' . s:blue . ' cterm=' . s:none
" String   a string constant: "this is a string"
" Character  a character constant: 'c', '\n'
" Number   a number constant: 234, 0xff
" Boolean  a boolean constant: TRUE, false
" Float    a floating point constant: 2.3e10

" any variable name
exec 'hi Identifier ctermbg=' . s:none . ' ctermfg=' . s:cyan . ' cterm=' . s:none
" Function function name (also: methods for classes)
exec 'hi Function ctermbg=' . s:none . ' ctermfg=' . s:red_light . ' cterm=' . s:none

" any statement
exec 'hi Statement ctermbg=' . s:none . ' ctermfg=' . s:green . ' cterm=' . s:none
" Conditional  if, then, else, endif, switch, etc.
" Repeat   for, do, while, etc.
" Label    case, default, etc.
" Operator "sizeof", "+", "*", etc.
" Keyword  any other keyword
" Exception  try, catch, throw

" generic Preprocessor
exec 'hi PreProc ctermbg=' . s:none . ' ctermfg=' . s:yellow_light . ' cterm=' . s:none
" Include  preprocessor #include
" Define   preprocessor #define
" Macro    same as Define
" PreCondit  preprocessor #if, #else, #endif, etc.

" int, long, char, etc.
exec 'hi Type ctermbg=' . s:none . ' ctermfg=' . s:yellow . ' cterm=' . s:none
" StorageClass static, register, volatile, etc.
" Structure  struct, union, enum, etc.
" Typedef  A typedef

" any special symbol
exec 'hi Special ctermbg=' . s:none . ' ctermfg=' . s:red . ' cterm=' . s:none
" SpecialChar  special character in a constant
" Tag    you can use CTRL-] on this
" Delimiter  character that needs attention
" SpecialComment special things inside a comment
" Debug    debugging statements

" text that stands out, HTML links
exec 'hi Underlined ctermbg=' . s:none . ' ctermfg=' . s:white_light . ' cterm=underline'

" left blank, hidden
exec 'hi Ignore ctermbg=' . s:none . ' ctermfg=' . s:none . ' cterm=' . s:none

" any erroneous construct
exec 'hi Error ctermbg=' . s:black . ' ctermfg=' . s:red . ' cterm=' . s:none

" anything that needs extra attention; mostly the keywords TODO FIXME and XXX
exec 'hi! Todo ctermbg=' . s:none . ' ctermfg=' . s:yellow . ' cterm=' . s:bold

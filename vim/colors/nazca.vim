" Nazca Color Scheme
" based on ir_black color scheme More at: http://blog.infinitered.com/entries/show/8
" Modification made by Jose Elera (http://www.twitter.com/jelera)
"
" Enhanced Javascript highlighting, to be used with a modified javascript syntax file based on the one created by Yi Zhao (http://is.gd/eoqPN)



" ********************************************************************************
" Standard colors used in all ir_black themes:
" Note, x:x:x are RGB values
"
"  normal: #f6f3e8
" 
"  string: #A8FF60  168:255:96                   
"    string inner (punc, code, etc): #00A0A0  0:160:160
"  number: #FF73FD  255:115:253                 
"  comments: #7C7C7C  124:124:124
"  keywords: #96CBFE  150:203:254             
"  operators: white
"  class: #FFFFB6  255:255:182
"  method declaration name: #FFD2A7  255:210:167
"  regular expression: #E9C062  233:192:98
"    regexp alternate: #FF8000  255:128:0
"    regexp alternate 2: #B18A3D  177:138:61
"  variable: #C6C5FE  198:197:254
"  
" Misc colors:
"  red color (used for whatever): #FF6C60   255:108:96 
"     light red: #FFB6B0   255:182:176
"
"  brown: #E18964  good for special
"
"  lightpurpleish: #FFCCFF
" 
" Interface colors:
"  background color: black
"  cursor (where underscore is used): #FFA560  255:165:96
"  cursor (where block is used): white
"  visual selection: #1D1E2C  
"  current line: #151515  21:21:21
"  search selection: #07281C  7:40:28
"  line number: #3D3D3D  61:61:61


" ********************************************************************************
" The following are the preferred 16 colors for your terminal
"           Colors      Bright Colors
" Black     #4E4E4E     #7C7C7C
" Red       #FF6C60     #FFB6B0
" Green     #A8FF60     #CEFFAB
" Yellow    #FFFFB6     #FFFFCB
" Blue      #96CBFE     #FFFFCB
" Magenta   #FF73FD     #FF9CFE
" Cyan      #C6C5FE     #DFDFFE
" White     #EEEEEE     #FFFFFF


" ********************************************************************************
hi clear

if exists("syntax_on")
  syntax reset
endif

let colors_name = "nazca"


"hi Example         guifg=NONE        guibg=NONE        gui=NONE      ctermfg=NONE        ctermbg=NONE        cterm=NONE

" General colors
hi Normal           guifg=#f6f3e8 ctermfg=7     guibg=#161617 ctermbg=233       gui=NONE      ctermfg=252        ctermbg=234        cterm=NONE
hi NonText          guifg=#505050 ctermfg=239    guibg=#000000 ctermbg=0       gui=NONE      ctermfg=black       ctermbg=NONE        cterm=NONE

hi Cursor           guifg=#000000 ctermfg=0       guibg=#f0f000 ctermbg=11       gui=NONE      ctermfg=black       ctermbg=white       cterm=reverse
hi LineNr           guifg=#3D3D3D ctermfg=237     guibg=#000000 ctermbg=0       gui=NONE      ctermfg=darkgray    ctermbg=NONE        cterm=NONE

hi VertSplit        guifg=#202020 ctermfg=234     guibg=#202020 ctermbg=234     gui=NONE      ctermfg=darkgray    ctermbg=darkgray    cterm=NONE
hi StatusLine       guifg= #9cffd3 ctermfg=252     guibg=#202020 ctermbg=234     gui=NONE    ctermfg=white       ctermbg=darkgray    cterm=NONE
hi StatusLineNC     guifg=#000000 ctermfg=0       guibg=#202020 ctermbg=234     gui=bold      ctermfg=blue        ctermbg=darkgray    cterm=NONE  

hi FoldColumn       guifg=#a0a8b0 ctermfg=248     guibg=#384048 ctermbg=238     gui=NONE      ctermfg=NONE        ctermbg=NONE        cterm=NONE
hi Folded           guifg=#a0a8b0 ctermfg=248     guibg=#384048 ctermbg=238     gui=NONE      ctermfg=NONE        ctermbg=NONE        cterm=NONE
hi Title            guifg=#f6f3e8 ctermfg=7     guibg=NONE        gui=bold      ctermfg=NONE        ctermbg=NONE        cterm=NONE
hi Visual           guifg=NONE        guibg=#262D51 ctermbg=237     gui=NONE      ctermfg=NONE        ctermbg=darkgray    cterm=NONE

hi SpecialKey       guifg=#505050 ctermfg=239     guibg=#000000 ctermbg=0     gui=NONE      ctermfg=NONE        ctermbg=NONE        cterm=NONE


hi WildMenu         guifg=green       guibg=#f0f000 ctermbg=11      gui=NONE      ctermfg=black       ctermbg=yellow      cterm=NONE
hi PmenuSbar        guifg=#000000 ctermfg=0       guibg=#ffffff ctermbg=15       gui=NONE      ctermfg=black       ctermbg=white       cterm=NONE
"hi Ignore           guifg=gray        guibg=#000000 ctermbg=0       gui=NONE      ctermfg=NONE        ctermbg=NONE        cterm=NONE

hi Error            guifg=NONE        guibg=NONE        gui=undercurl ctermfg=white       ctermbg=red         cterm=NONE     guisp=#FF6C60 " undercurl color
hi ErrorMsg         guifg=#ffffff ctermfg=15       guibg=#FF6C60 ctermbg=203     gui=BOLD      ctermfg=white       ctermbg=red         cterm=NONE
hi WarningMsg       guifg=#ffffff ctermfg=15       guibg=#FF6C60 ctermbg=203     gui=BOLD      ctermfg=white       ctermbg=red         cterm=NONE

" Message displayed in lower left, such as --INSERT--
hi ModeMsg          guifg=#000000 ctermfg=0       guibg=#C6C5FE ctermbg=189     gui=BOLD      ctermfg=black       ctermbg=cyan        cterm=BOLD

if version >= 700 " Vim 7.x specific colors
  hi CursorLine     guifg=NONE        guibg=#000000 ctermbg=0     gui=NONE      ctermfg=NONE        ctermbg=NONE        cterm=BOLD
  hi CursorColumn   guifg=NONE        guibg=#121212 ctermbg=233     gui=NONE      ctermfg=NONE        ctermbg=NONE        cterm=BOLD
  hi MatchParen     guifg=#f6f3e8 ctermfg=7     guibg=#857b6f ctermbg=243     gui=BOLD      ctermfg=white       ctermbg=darkgray    cterm=NONE
  hi Pmenu          guifg=#f6f3e8 ctermfg=7     guibg=#444444 ctermbg=238     gui=NONE      ctermfg=NONE        ctermbg=NONE        cterm=NONE
  hi PmenuSel       guifg=#000000 ctermfg=0     guibg=#cae682 ctermbg=186     gui=NONE      ctermfg=NONE        ctermbg=NONE        cterm=NONE
  hi Search         guifg=#000000 ctermfg=0       guibg=#FFFFB6 ctermbg=229        gui=underline ctermfg=NONE        ctermbg=NONE        cterm=underline
endif

" Syntax highlighting
hi Comment          guifg=#7C7C7C ctermfg=8     guibg=NONE        gui=NONE      ctermfg=darkgray    ctermbg=NONE        cterm=NONE
hi String           guifg=#A8FF60 ctermfg=155     guibg=NONE        gui=NONE      ctermfg=green       ctermbg=NONE        cterm=NONE
hi Number           guifg=#FF73FD ctermfg=207     guibg=NONE        gui=NONE      ctermfg=magenta     ctermbg=NONE        cterm=NONE

hi Keyword          guifg=#96CBFE ctermfg=117     guibg=NONE        gui=NONE      ctermfg=blue        ctermbg=NONE        cterm=NONE
hi PreProc          guifg=#96CBFE ctermfg=117     guibg=NONE        gui=NONE      ctermfg=blue        ctermbg=NONE        cterm=NONE
hi Conditional      guifg=#6699CC ctermfg=68     guibg=NONE        gui=NONE      ctermfg=blue        ctermbg=NONE        cterm=NONE  " if else end

hi Todo             guifg=#890a0a ctermfg=88  guibg=#f2f773 ctermbg=227       gui=BOLD      ctermfg=yellow         ctermbg=red        cterm=NONE
hi Constant         guifg=#99CC99 ctermfg=114     guibg=NONE        gui=NONE      ctermfg=cyan        ctermbg=NONE        cterm=NONE

hi Identifier       guifg=#C6C5FE ctermfg=189     guibg=NONE        gui=NONE      ctermfg=cyan        ctermbg=NONE        cterm=NONE
hi Function         guifg=#FFD2A7 ctermfg=223     guibg=NONE        gui=BOLD      ctermfg=brown       ctermbg=NONE        cterm=BOLD
hi Type             guifg=#FFFFB6 ctermfg=229     guibg=NONE        gui=BOLD      ctermfg=yellow      ctermbg=NONE        cterm=NONE
hi Statement        guifg=#6699CC ctermfg=68     guibg=NONE        gui=NONE      ctermfg=lightblue   ctermbg=NONE        cterm=NONE

hi Special          guifg=#E18964 ctermfg=173     guibg=NONE        gui=NONE      ctermfg=white       ctermbg=NONE        cterm=NONE
hi Delimiter        guifg=#00A0A0 ctermfg=37     guibg=NONE        gui=NONE      ctermfg=cyan        ctermbg=NONE        cterm=NONE
hi Operator         guifg=#E8AC6F ctermfg=179       guibg=NONE        gui=NONE      ctermfg=white       ctermbg=NONE        cterm=NONE

hi link Character       Constant
hi link Boolean         Constant
hi link Float           Number
hi link Repeat          Statement
hi link Label           Statement
hi link Exception       Statement
hi link Include         PreProc
hi link Define          PreProc
hi link Macro           PreProc
hi link PreCondit       PreProc
hi link StorageClass    Type
hi link Structure       Type
hi link Typedef         Type
hi link Tag             Special
hi link SpecialChar     Special
hi link SpecialComment  Special
hi link Debug           Special

" Special for Ruby
hi rubyRegexp                  guifg=#B18A3D ctermfg=137      guibg=NONE      gui=NONE      ctermfg=brown          ctermbg=NONE      cterm=NONE
hi rubyRegexpDelimiter         guifg=#FF8000 ctermfg=208      guibg=NONE      gui=NONE      ctermfg=brown          ctermbg=NONE      cterm=NONE
hi rubyEscape                  guifg=#ffffff ctermfg=15        guibg=NONE      gui=NONE      ctermfg=cyan           ctermbg=NONE      cterm=NONE
hi rubyInterpolationDelimiter  guifg=#00A0A0 ctermfg=37      guibg=NONE      gui=NONE      ctermfg=blue           ctermbg=NONE      cterm=NONE
hi rubyControl                 guifg=#6699CC ctermfg=68      guibg=NONE      gui=NONE      ctermfg=blue           ctermbg=NONE      cterm=NONE  "and break, etc
"hi rubyGlobalVariable          guifg=#FFCCFF ctermfg=225      guibg=NONE      gui=NONE      ctermfg=lightblue      ctermbg=NONE      cterm=NONE  "yield
hi rubyStringDelimiter         guifg=#336633 ctermfg=238      guibg=NONE      gui=NONE      ctermfg=lightgreen     ctermbg=NONE      cterm=NONE
"rubyInclude
"rubySharpBang
"rubyAccess
"rubyPredefinedVariable
"rubyBoolean
"rubyClassVariable
"rubyBeginEnd
"rubyRepeatModifier
"hi link rubyArrayDelimiter    Special  " [ , , ]
"rubyCurlyBlock  { , , }

hi link rubyClass             Keyword 
hi link rubyModule            Keyword 
hi link rubyKeyword           Keyword 
hi link rubyOperator          Operator
hi link rubyIdentifier        Identifier
hi link rubyInstanceVariable  Identifier
hi link rubyGlobalVariable    Identifier
hi link rubyClassVariable     Identifier
hi link rubyConstant          Type  


" Special for Java
" hi link javaClassDecl    Type
hi link javaScopeDecl         Identifier 
hi link javaCommentTitle      javaDocSeeTag 
hi link javaDocTags           javaDocSeeTag 
hi link javaDocParam          javaDocSeeTag 
hi link javaDocSeeTagParam    javaDocSeeTag 

hi javaDocSeeTag              guifg=#CCCCCC ctermfg=252     guibg=NONE        gui=NONE      ctermfg=darkgray    ctermbg=NONE        cterm=NONE
hi javaDocSeeTag              guifg=#CCCCCC ctermfg=252     guibg=NONE        gui=NONE      ctermfg=darkgray    ctermbg=NONE        cterm=NONE
"hi javaClassDecl              guifg=#CCFFCC ctermfg=194     guibg=NONE        gui=NONE      ctermfg=white       ctermbg=NONE        cterm=NONE


" Special for XML
hi link xmlTag          Keyword 
hi link xmlTagName      Conditional 
hi link xmlEndTag       Identifier 


" Special for HTML
hi link htmlTag         Keyword
hi link htmlTagName     Conditional 
hi link htmlEndTag      Identifier 
hi htmlH1 guifg=#93de60 ctermfg=113 gui=underline
hi link htmlH2 htmlH1
hi link htmlH3 htmlH1
hi link htmlH4 htmlH1

" Special for CSS
hi cssTagName guifg=#70a8dd gui=BOLD
hi cssBoxProp guifg=#d0af76 gui=NONE
hi link cssColorProp cssBoxProp
hi link cssFontProp cssBoxProp
hi link cssTextProp cssBoxProp
hi cssPseudoClassId guifg=#9ccfdd gui=italic
hi cssIdentifier guifg=#a2ddb8 gui=italic

" Special for Markdown
hi markdownUrl guifg=#e48944
hi markdownCode guifg=#a7bee4 gui=BOLD
hi markdownCodeBlock guifg=#c5b1e4

" Special for Javascript
" TODO:  - Add colors to the cterm
hi javaScriptBrowserObjects         guifg=#DBB6D2 ctermfg=182   gui=italic
hi javaScriptDOMObjects             guifg=#DBB6D2 gui=BOLD
hi javaScriptAjaxObjects            guifg=#5d91d3 gui=underline
hi javaScriptDOMMethods   guifg=#D4FA9B ctermfg=192
hi javaScriptFuncName               guifg=#B5E4F7 ctermfg=153
hi javaScriptHtmlElemProperties       guifg=#FF9494 ctermfg=210
hi javaScriptEventListenerKeyword   guifg=#6699CC ctermfg=68
hi javaScriptAjaxMethods    guifg=#6699CC ctermfg=68
hi javaScriptAjaxProperties guifg=#FF9494 ctermfg=210
hi link javaScriptNumber      Number 
hi link javaScriptPropietaryObjects javaScriptAjaxObjects
hi link javaScriptDOMProperties     Keyword

" Special for Python
"hi  link pythonEscape         Keyword      


" Special for CSharp
hi  link csXmlTag             Keyword      

" Special for PHP

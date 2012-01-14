" Vim syntax file
" Language:     Screenplay Markdown (provisional)
" Maintainer:	Carson Fire
" Filenames:    *.spmd
" Last Change:	2012 January 14
" Version:		1.1

if exists("b:current_syntax")
  finish
endif

syn case match

syn region spmdSceneheading start="^\(\.\|INT\. \|EXT\. \|INT\./EXT\. \|INT/EXT\. \|INT \|EXT \|INT/EXT \|I/E \|int\. \|ext\. \|int\./ext\. \|int/ext\. \|int \|ext \|int/ext \|i/e \)" end="$" 
syn region spmdDialogue matchgroup=spmdCharacter start="\n^\t*\s*[ A-ZÅÄÖ][.\ A-ZÅÄÖ(]*[.\A-ZÅÄÖ)^]$" end="^$" contains=spmdParenthetical, spmdJoint
syn region spmdComment start="\[\[" end="\]\]"
syn region spmdSynopses start="{{" end="}}"

syn match spmdPagebreak "^===[=]*$"
syn match spmdUnderline "_[^_]*_" 
syn match spmdItalic "\*[^\*]*\*" 
syn match spmdBold "\*\*[^\*]*\*\*" 
syn match spmdBolditalic "\*\*\*[^\*]*\*\*\*" 
syn match spmdParenthetical "^\t*\s*\((.*)\)$" contained
syn match spmdTransition ">\t*\s*[/. A-ZÅÄÖ]*$"
syn match spmdTransition "\t*\s*[/. A-ZÅÄÖ]*:$"
syn match spmdCentered "^\t*\s*>[^$]*<"
syn match spmdDoublespace "  $"
" syn match spmdJoint "||\n[' A-ZÅÄÖ()]*$" contained

hi def spmdUnderline					gui=underline
hi def spmdItalic						gui=italic cterm=italic	
hi def spmdBold							gui=bold cterm=bold	
hi def spmdBolditalic					gui=bold,italic cterm=bold,italic	
hi def link spmdSynopses				special
hi def link spmdComment					comment
hi def link spmdPagebreak				constant
hi def link spmdDoublespace				statusline 
hi def link spmdCharacter               tag 
hi def link spmdDialogue                string
hi def link spmdParenthetical           function
hi def link spmdSceneheading            title
hi def link spmdTransition				conditional
hi def link spmdCentered				statement
" hi def link spmdJoint					spmdCharacter



" Vim syntax file
" Language:     Screenplay Markdown (provisional)
" Maintainer:	Carson Fire
" Filenames:    *.spmd
" Last Change:	2012 January 13

if exists("b:current_syntax")
  finish
endif

runtime! syntax/markdown.vim
unlet! b:current_syntax

syn case match

syn region spmdSetting start="^\(INT\.\|EXT\.\)" end="$" 
syn region spmdDialogue start="^[' A-ZÅÄÖ]*$" end="^$"
syn region spmdDialogue matchgroup=spmdCharacter start="^[' A-ZÅÄÖ]*$" end="^$" contains=spmdParenthetical,  spmdJoint
syn match spmdParenthetical "^\((.*)\)$" contained
syn match spmdJoint "||\n[' A-ZÅÄÖ]*$" contained
syn match spmdCentered "^>[^$]*<"
syn match spmdTransition ".*CUT TO:"
syn match spmdSetting ".*POV$"
syn match spmdSetting "OPENING TITLES"

hi def link spmdCharacter               tag 
hi def link spmdDialogue                string
hi def link spmdParenthetical           function
hi def link spmdJoint					spmdCharacter
hi def link spmdSetting                 boolean
hi def link spmdTransition				conditional
hi def link spmdDirection				comment
hi def link spmdCentered				title	


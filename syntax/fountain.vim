" Vim syntax file
" Language:	Fountain screenplay
" File: .fountain, .spmd, .txt
" Reference: http://fountain.io/
" Maintainer:	Carson Fire <carsonfire@gmail.com>
" Last Change:	February 9, 2012
" Version: 2.0	

if exists("b:current_syntax")
  finish
endif
syn sync minlines=200

syn region fountainTitlePage start="\%^\(.*\):" end="^$"
syn match fountainCharacter "^\(\d\|\u\|\s\|\W\)*$" contains=fountainDualDialogue 
syn region fountainDialogue matchgroup=fountainCharacter start="^\(\d\|\u\|\s\|\W\)*$" end="^\s*$" contains=fountainCharacter,fountainParenthetical,fountainBoneyard
syn match fountainParenthetical "^\s*\((.*)\)$" contained
syn match fountainDualDialogue "\^$" contained
syn match fountainTransition "^\(\d\|\u\|\s\|\W\)* TO:$"
syn match fountainTransitionForced "^\s*>\(.*\)"
syn match fountainCentered "^\s*>\(.*\)<"
syn match fountainUnderlined "_[^_]*_" 
syn match fountainItalic "\*[^\*]*\*" 
syn match fountainBold "\*\*[^\*]*\*\*"
syn match fountainBoldItalic "\*\*\*[^\*]*\*\*\*" 
syn match fountainPagebreak "^===[=]*$"
"syn region fountainActionForced start="^\(\d\|\u\|\s\|\W\)*" end="[ ]$"
syn region fountainNotes start="\[\[" end="\]\]"
syn region fountainSection1 start="^\s*# " end="$"
syn region fountainSection2 start="^\s*## " end="$"
syn region fountainSection3 start="^\s*### " end="$"
syn region fountainSection4 start="^\s*#### " end="$"
syn region fountainSection5 start="^\s*##### " end="$"
syn region fountainSection6 start="^\s*###### " end="$"
syn region fountainSynopses start="^\s*= " end="$"
syn region fountainSceneHeading start="^\s*\(\.\|INT\. \|EXT\. \|INT\./EXT\. \|INT/EXT\. \|INT \|EXT \|INT/EXT \|I/E \|int\. \|ext\. \|int\./ext\. \|int/ext\. \|int \|ext \|int/ext \|i/e \)" end="$" 
syn match fountainBoneyard "/\*\(\_[^\*]\)*\*/" 

hi def link fountainTitlePage		    title
hi def link fountainSceneHeading	    title
hi def link fountainCharacter			identifier 
hi def link fountainDialogue			statement
hi def link fountainParenthetical		function
hi def link fountainDualDialogue		conditional
hi def link fountainTransition			todo
hi def link fountainTransitionForced	todo
hi def link fountainCentered			character
hi fountainUnderlined					gui=underline
hi fountainItalic						gui=italic cterm=italic	
hi fountainBold							gui=bold cterm=bold	
hi fountainBoldItalic					gui=bold,italic cterm=bold,italic	
hi def link fountainPagebreak			conditional
hi def link fountainActionForced		normal
hi def link fountainNotes				comment
hi def link fountainBoneyard			nontext	
hi def link fountainSection1			htmlH1	
hi def link fountainSection2			htmlH2	
hi def link fountainSection3			htmlH3	
hi def link fountainSection4			htmlH4	
hi def link fountainSection5			htmlH5	
hi def link fountainSection6			htmlH6	
hi def link fountainSynopses			number

let b:current_syntax = "fountain"

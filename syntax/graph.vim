" Vim syntax file
" Language:         graph
" Maintainer:       Vasiliy Krasnobay
" Last Change:      $Date: Ср. июня 30 14:38:46 UTC 2016$
" Filenames:        *.graph
" Version:          $Id: graph.vim,v 1.0 $

if version < 600
  syntax clear
elseif exists("b:current_syntax")
  finish
endif

syn case                    ignore
syn region                  comment             start=+#+ skip=+\\\\\|\\'+ end=+$+
syn match                   symbol              "\%(|\|\.\|,\|:\|;\|=\|-\|>\|{\|}\|(\|)\|\[\|\]\)"
syn match                   func                /\w\+\((\)\@=/ contains=symbol
syn match                   var                 "(\w\+)" contains=func,symbol
syn match                   var_comment         ":.*)" contains=symbol,var
syn match                   var                 "(\w\+:" contains=symbol,var_comment
syn match                   var                 ".*=" contains=symbol


hi link comment             Comment
hi link symbol              Operator
hi link func                Identifier
hi link var                 Function
hi link var_comment         String

let b:current_syntax = "graph"

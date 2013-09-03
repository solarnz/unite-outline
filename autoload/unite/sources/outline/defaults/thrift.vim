"=============================================================================
" File    : autoload/unite/sources/outline/defaults/thrift.vim
" Author  : Chris Trotman <chris@trotman.io>
" Updated : 2012-01-11
"
" Licensed under the MIT license:
" http://www.opensource.org/licenses/mit-license.php
"
"=============================================================================

" Default outline info for Vim
" Version: 0.0.0

function! unite#sources#outline#defaults#thrift#outline_info()
  return s:outline_info
endfunction

let s:Util = unite#sources#outline#import('Util')

"-----------------------------------------------------------------------------
" Outline Info

let s:outline_info = {
      \ 'heading': '\c^\(struct\|enum\|exception\|service\) [a-zA-Z]',
      \ 'highlight_rules': [
      \     { 'name': 'type',
      \       'pattern': '/\(struct\|enum\|exception\)/' },
      \ ],
      \}

function! s:outline_info.create_heading(which, heading_line, matched_line, context)
  let heading = {
        \ 'word' : a:matched_line,
        \ 'level': 1,
        \ 'type' : 'generic',
        \ }

  return heading
endfunction

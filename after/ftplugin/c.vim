set colorcolumn=80
syn match cCustomFunc /\w\+\ze(/
hi cCustomFunc ctermfg=150 guifg=yellow

hi cCustomStruct ctermfg=147 guifg=blue
call matchadd("cCustomStruct", '\C\(struct\|enum\|union\)\s\+\zs\w\+',-1)

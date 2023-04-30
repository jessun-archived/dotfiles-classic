" navigate chunks of current buffer
nmap [g <Plug>(coc-git-prevchunk)
nmap ]g <Plug>(coc-git-nextchunk)
" navigate conflicts of current buffer
nmap [c <Plug>(coc-git-prevconflict)
nmap ]c <Plug>(coc-git-nextconflict)
" show chunk diff at current position
nmap gs <Plug>(coc-git-chunkinfo)
" show commit contains current position
nmap gc <Plug>(coc-git-commit)
" create text object for git chunks
omap ig <Plug>(coc-git-chunk-inner)
xmap ig <Plug>(coc-git-chunk-inner)
omap ag <Plug>(coc-git-chunk-outer)
xmap ag <Plug>(coc-git-chunk-outer)


nmap cb <Plug>(coc-git-keepboth)
omap cb <Plug>(coc-git-keepboth)

nmap co <Plug>(coc-git-keepcurrent)
omap co <Plug>(coc-git-keepcurrent)

nmap ct <Plug>(coc-git-keepincoming)
omap ct <Plug>(coc-git-keepincoming)

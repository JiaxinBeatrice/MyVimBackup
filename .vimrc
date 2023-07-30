syntax on
color codedark
filetype plugin indent on

set listchars=tab:»\ ,trail:.
set mouse=a
set laststatus=2

let $FZF_DEFAULT_OPS="--bind \"ctrl-n:preview-down,ctrl-p:preview-up\""

map <F12> :set nu!<cr>
map <F10> :set list!<cr>
map <F8> :set hls!<cr>
map <F9> :TlistToggle<cr>
map <F7> :Gtags -goi 
map <F6> :Git blame<cr>
map <F5> :cclose<cr>

map <C-n> :Rg <C-R>=expand("<cword>")<cr><cr>
map <silent> <C-j> :cnext<cr>
map <silent> <C-k> :cprevious<cr>

nnoremap <F4> :call InterestingWords('n')<cr>
vnoremap <F4> :call InterestingWords<'v'><cr>
nnoremap <F3> :call UncolorAllWords()<cr>

" ============================================
"vim-plug https://github.com/junegunn/vim-plug
" ============================================
call plug#begin()
" The default plugin directory will be as follows:
"   - Vim (Linux/macOS): '~/.vim/plugged'
"   - Vim (Windows): '~/vimfiles/plugged'
"   - Neovim (Linux/macOS/Windows): stdpath('data') . '/plugged'
" You can specify a custom plugin directory by passing it as the argument
"   - e.g. `call plug#begin('~/.vim/plugged')`
"   - Avoid using standard Vim directory names like 'plugin'

" Make sure you use single quotes

" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

Plug 'ludovicchabant/vim-gutentags'

Plug 'yegappan/taglist'

Plug 'tpope/vim-fugitive'

Plug 'lfv89/vim-interestingwords'
" Initialize plugin system
" - Automatically executes `filetype plugin indent on` and `syntax enable`.
call plug#end()
" You can revert the settings after the call like so:
"   filetype indent off   " Disable file-type-specific indentation
"   syntax off            " Disable syntax highlighting

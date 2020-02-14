"==========================================
" Alt key
"==========================================
let c='a'                                                                                                                                                                                                   
while c <= 'z' 
  exec "set <A-".c.">=\e".c
  exec "imap \e".c." <A-".c.">"
  let c = nr2char(1+char2nr(c))
endw
set timeout ttimeoutlen=50

"==========================================
" vim config
"==========================================
set nu
set cursorline
set showmatch

set tabstop=4
set shiftwidth=4
set autoindent

nmap ˙ <C-w>h
nmap ¬ <C-w>l
nmap ˚ <C-w>k
nmap ∆ <C-w>j
 
set incsearch
syntax enable
syntax on
filetype plugin indent on

"==========================================
" vim-plug
"==========================================
call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree'

Plug 'jistr/vim-nerdtree-tabs'
 
Plug 'Xuyuanp/nerdtree-git-plugin'
 
Plug 'majutsushi/tagbar'
 
Plug 'jiangmiao/auto-pairs'
 
Plug 'vim-airline/vim-airline'
 
Plug 'Valloric/YouCompleteMe'
 
Plug 'airblade/vim-gitgutter'
 
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

Plug 'vim-scripts/SuperTab'

Plug 'Shougo/neocomplete.vim'

" colorscheme monokai
Plug 'crusoexia/vim-monokai'

Plug 'fatih/vim-go', { 'tag': '*' }

Plug 'dgryski/vim-godef'

Plug 'iamcco/mathjax-support-for-mkdp'
Plug 'iamcco/markdown-preview.vim'

call plug#end()

"==========================================
" vim-go
"==========================================
let g:go_fmt_command = "goimports"
let g:go_autodetect_gopath = 1
let g:go_list_type = "quickfix"

let g:go_version_warning = 1
let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_operators = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_methods = 1
let g:go_highlight_generate_tags = 1

let g:godef_split=2

"==========================================
" NERDTree
" =========================================
map <F10> :NERDTreeToggle<CR>
nmap µ :NERDTreeFind<CR>

let NERDTreeShowLineNumbers=1
let NERDTreeAutoCenter=1
let NERDTreeShowHidden=1
let NERDTreeIgnore=['\.pyc','\~$','\.swp']
let NERDTreeShowBookmarks=2
let g:nerdtree_tabs_open_on_console_startup=1

"==============================================================================
" nerdtree-git-plugin
"==============================================================================
let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ 'Ignored'   : '☒',
    \ "Unknown"   : "?"
    \ }

let g:NERDTreeShowIgnoredStatus = 1
nmap <Leader>pwd :NERDTreeCWD<CR>

"==========================================
" majutsushi/tagbar
" =========================================
nmap <F9> :TagbarToggle<CR>

let g:tagbar_type_go = {
    \ 'ctagstype' : 'go',
    \ 'kinds'     : [
        \ 'p:package',
        \ 'i:imports:1',
        \ 'c:constants',
        \ 'v:variables',
        \ 't:types',
        \ 'n:interfaces',
        \ 'w:fields',
        \ 'e:embedded',
        \ 'm:methods',
        \ 'r:constructor',
        \ 'f:functions'
    \ ],
    \ 'sro' : '.',
    \ 'kind2scope' : {
        \ 't' : 'ctype',
        \ 'n' : 'ntype'
    \ },
    \ 'scope2kind' : {
        \ 'ctype' : 't',
        \ 'ntype' : 'n'
    \ },
    \ 'ctagsbin'  : 'gotags',
    \ 'ctagsargs' : '-sort -silent'
\ }

"==============================================================================
" Valloric/YouCompleteMe
"==============================================================================
" make YCM compatible with UltiSnips (using supertab)
let g:ycm_key_list_select_completion = ['∑', '<DOWN>']
let g:ycm_key_list_previous_completion = ['∂', '<Up>']
let g:SuperTabDefaultCompletionType = '∑'

" better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"

let g:ycm_key_invoke_completion = '<Leader>,'

"==============================================================================
" layout
"==============================================================================
set background=dark

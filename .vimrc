set t_Co=256
syntax on
au BufNewFile,BufRead *.less set filetype=css
au BufNewFile,BufRead *.hbs set filetype=html
au BufRead,BufNewFile *.pegjs set filetype=pegjs
au BufRead,BufNew *.md set filetype=markdown
filetype plugin indent off
set tabstop=2
set expandtab
set shiftwidth=2
set autoindent
set ignorecase
let g:molokai_original = 1
let g:rehash256 = 1
colorscheme molokai
nnoremap -d "_d
vnoremap -d "_d
noremap <F12> <Esc>:syntax sync fromstart<CR>
inoremap <F12> <C-o>:syntax sync fromstart<CR>
noremap <C-j> <C-e>
inoremap <C-j> <C-x><C-e>
noremap <C-k> <C-y>
inoremap <C-k> <C-x><C-y>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
set relativenumber
autocmd InsertEnter * :set norelativenumber | set number
autocmd InsertLeave * :set relativenumber

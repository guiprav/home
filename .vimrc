set t_Co=256
syntax on
au BufNewFile,BufRead *.less set filetype=css
au BufNewFile,BufRead *.hbs set filetype=html
au BufRead,BufNewFile *.pegjs set filetype=pegjs
au BufRead,BufNew *.md set filetype=markdown
set smartindent
set tabstop=4
set shiftwidth=4
let g:molokai_original = 1
let g:rehash256 = 1
colorscheme molokai
nnoremap -d "_d
vnoremap -d "_d
nnoremap -cc I//<Esc>
nnoremap -CC ^2lF/F/2x
vnoremap -cc :norm!I//<CR>
vnoremap -CC :norm!^2lF/F/2x<CR>
nnoremap -c# I#<Esc>
nnoremap -C# ^lF#x
vnoremap -c# :norm!I#<CR>
vnoremap -C# :norm!^lF#x<CR>
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
autocmd InsertEnter * :set norelativenumber
autocmd InsertLeave * :set relativenumber
" vim:fdm=marker
"────────────────────────────────────────────────────────────────────────────────────
"─██████──██████─██████████─██████──────────██████─████████████████───██████████████─
"─██░░██──██░░██─██░░░░░░██─██░░██████████████░░██─██░░░░░░░░░░░░██───██░░░░░░░░░░██─
"─██░░██──██░░██─████░░████─██░░░░░░░░░░░░░░░░░░██─██░░████████░░██───██░░██████████─
"─██░░██──██░░██───██░░██───██░░██████░░██████░░██─██░░██────██░░██───██░░██─────────
"─██░░██──██░░██───██░░██───██░░██──██░░██──██░░██─██░░████████░░██───██░░██─────────
"─██░░██──██░░██───██░░██───██░░██──██░░██──██░░██─██░░░░░░░░░░░░██───██░░██─────────
"─██░░██──██░░██───██░░██───██░░██──██████──██░░██─██░░██████░░████───██░░██─────────
"─██░░░░██░░░░██───██░░██───██░░██──────────██░░██─██░░██──██░░██─────██░░██─────────
"─████░░░░░░████─████░░████─██░░██──────────██░░██─██░░██──██░░██████─██░░██████████─
"───████░░████───██░░░░░░██─██░░██──────────██░░██─██░░██──██░░░░░░██─██░░░░░░░░░░██─
"─────██████─────██████████─██████──────────██████─██████──██████████─██████████████─
"────────────────────────────────────────────────────────────────────────────────────

"Basic Settings ---------------------------------------------------------------{{{

"Start ViM mode
set nocompatible

" }}}
"Indentations -----------------------------------------------------------------{{{
set shiftwidth=4
set tabstop=4
set expandtab
"}}}
"Plugins ----------------------------------------------------------------------{{{
call plug#begin()
" The default plugin directory will be as follows:
"   - Vim (Linux/macOS): '~/.vim/plugged'
"   - Vim (Windows): '~/vimfiles/plugged'
"   - Neovim (Linux/macOS/Windows): stdpath('data') . '/plugged'
" You can specify a custom plugin directory by passing it as the argument
"   - e.g. `call plug#begin('~/.vim/plugged')`
"   - Avoid using standard Vim directory names like 'plugin'

" Make sure you use single quotes

Plug 'vim-syntastic/syntastic'
Plug 'puremourning/vimspector'
Plug 'kiteco/vim-plugin'
Plug 'tpope/vim-surround'
Plug 'vim-airline/vim-airline'
Plug 'morhetz/gruvbox'
" Initialize plugin system
call plug#end()
"}}}
"Mappings----------------------------------------------------------------------{{{
" esc in insert & visual mode
inoremap jk <esc>
vnoremap jk <esc>
"map leader to coma
let mapleader = ","
"}}}
"User Interface----------------------------------------------------------------{{{
"sets the line number on the left hand side
set number
"Sets the relative line number from the current line number
set relativenumber

" block checks current time and adjusts light or dark background
let hour = strftime("%H") 
if 6 <= hour && hour < 18 
    set background=light 
else 
    set background=dark 
endif 
colorscheme gruvbox 

"}}}
"Kite--------------------------------------------------------------------------{{{
" Python
let g:kite_supported_languages = ['python',]
inoremap <leader>m <C-n>
inoremap <leader>. <C-p>
inoremap <leader><leader> <C-y>
"}}}
"Airline-----------------------------------------------------------------------{{{
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
"}}}
"Paste Mode--------------------------------------------------------------------{{{
nnoremap <F2> :set invpaste paste?<CR>
set pastetoggle=<F2>
set showmode
"}}}
"VimInspector -----------------------------------------------------------------{{{
let g:vimspector_enable_mappings='HUMAN'
"}}}

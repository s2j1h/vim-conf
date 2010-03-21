" Mode non compatible avec Vi
set nocompatible

" un historique raisonnable
set history=100

" undo, pour revenir en arrière
set undolevels=150

" Suffixes à cacher
set suffixes=.jpg,.png,.jpeg,.gif,.bak,~,.swp,.swo,.o,.info,.aux

" Quand un fichier est changé en dehors de Vim, il est relu automatiquement
set autoread

" Quand une fermeture de parenthèse est entrée par l'utilisateur,
" l'éditeur saute rapidement vers l'ouverture pour montrer où se
" trouve l'autre parenthèse. Cette fonction active aussi un petit
" beep quand une erreur se trouve dans la syntaxe.
set showmatch
set matchtime=2

" Tout ce qui concerne la recherche. Incrémentale
" avec un highlight. Elle prend en compte la
" différence entre majuscule/minuscule.
set incsearch
set ignorecase
set smartcase

" Garder Deux lignes au dessus/en dessous
set scrolloff=2

" Gestion des recherches de fichiers / répertoires
set wildmode=longest,list

" Quand la rechercher atteint la fin du fichier, pas
" la peine de la refaire depuis le début du fichier
set hlsearch

" Format the statusline
set statusline=%F%m\ %r\ Line:%l\/%L,%c\ %p%%

" Sélectionner tout
map <C-a> ggVG

" Copier (le gv c'est pour remettre le sélection)
map <C-c> "+ygv

" Couper
map <C-x> "+x

" Coller
map <C-y> "+gP


" Coloration syntaxique
syntax on
let python_highlight_all = 1


" Turn on line numbers:
set number

" Toggle line numbers and fold column for easy copying:
nnoremap <F2> :set nonumber!<CR>:set foldcolumn=0<CR>

" indentation
filetype plugin indent on

" indentation = 4 + remplacer les tablulations par des espaces
set tabstop=4
set shiftwidth=4
set expandtab

"color
colorscheme desert
set gfn="Droid Sans Mono" 10

" Améliorer indentation
autocmd FileType python set complete+=k~/.vim/syntax/python.vim isk+=.,(

" Taglist variables
" Display function name in status bar:
let g:ctags_statusline=1
" Automatically start script
let generate_tags=1
" Displays taglist results in a vertical window:
let Tlist_Use_Horiz_Window=0
" Shorter commands to toggle Taglist display
nnoremap TT :TlistToggle<CR>
map <F4> :TlistToggle<CR>
" Various Taglist diplay config:
let Tlist_Use_Right_Window = 1
let Tlist_Compact_Format = 1
let Tlist_Exit_OnlyWindow = 1
let Tlist_GainFocus_On_ToggleOpen = 1
let Tlist_File_Fold_Auto_Close = 1

" complétude Python
filetype on
filetype plugin on
let g:pydiction_location = '/home/tifauve/.vim/libs/pydiction/complete-dict' 
" Pyflake / Pylint
" autocmd BufWrite *.{py} :call Pyflakes()

map <F9> :NERDTree<CR>

map <F11> :FuzzyFinderTextMate<CR>

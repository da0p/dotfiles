" Comments in Vimscript start with a `"`.

" If you open this file in Vim, it'll be syntax highlighted for you.

" Vim is based on Vi. Setting `nocompatible` switches from the default
" Vi-compatibility mode and enables useful Vim functionality. This
" configuration option turns out not to be necessary for the file named
" '~/.vimrc', because Vim automatically enters nocompatible mode if that file
" is present. But we're including it here just in case this config file is
" loaded some other way (e.g. saved as `foo`, and then Vim started with
" `vim -u foo`).
set nocompatible
filetype off                  " required

"==========================
"- Vundle Plugins
"=========================
source ~/.vim_cfg/vundle_plugins.vim

"=========================
"- Pathogen Plugins
"=========================
source ~/.vim_cfg/pathogen_plugins.vim

"==========================
"- Basic Configuration
"=========================
source ~/.vim_cfg/basic.vim

"==========================
"- NerdTree
"==========================
" Start NERDTree and put the cursor back in the other window.
source ~/.vim_cfg/nerd_tree.vim

"============================
""- cscope
"===========================
source ~/.vim_cfg/cscope_maps.vim

"===========================
""- Misc Configuration
"===========================
source ~/.vim_cfg/misc.vim
"
" ==================================
" Syntastic Configuration
" =================================
source ~/.vim_cfg/nerd_tree.vim

" Local customization in ~/.vimrc_local
let $LOCALFILE=expand("~/.vimrc_local")
if filereadable($LOCALFILE)
    source $LOCALFILE
endif


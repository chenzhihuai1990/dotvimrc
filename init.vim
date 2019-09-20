source ~/dotvimrc/plugins.vim
source ~/dotvimrc/general.vim
source ~/dotvimrc/keybindings.vim
for f in split(glob(fnamemodify(expand('<sfile>'), ':h').'\plugins\*.vim'))
	exe 'source' f
endfor


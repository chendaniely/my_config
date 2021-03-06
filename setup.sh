# backup old files
echo "backing up old files"
mv ~/.bashrc ~/.bashrc_bkup
mv ~/.bash_aliases ~/.bash_aliases_bkup
mv ~/.emacs ~/.emacs_bkup
mv ~/.emacs.d ~/.emacs.d_bkup

# create new links
echo "creating symlinks"
ln -s ${PWD}/.bashrc ~/.bashrc
ln -s ${PWD}/.bash_aliases ~/.bash_aliases
# ln -s ${PWD}/.emacs ~/.emacs
ln -s ${PWD}/.emacs.d ~/.emacs.d

# git config --global alias.l 'log --oneline --graph --decorate --all'

echo "Done"

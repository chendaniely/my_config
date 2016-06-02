
mv ~/.bashrc ~/.bashrc_bkup
mv ~/.bash_aliases ~/.bash_aliases_bkup

mv ~/.emacs ~/.emacs_bkup
mv ~/.emacs.d ~/.emacs.d_bkup

ln -s ~/git/my_config/.bashrc ~/.bashrc
ln -s ~/git/my_config/.bash_aliases ~/.bash_aliases

ln -s ~/git/my_config/.emacs ~/.emacs
ln -s ~/git/my_config/.emacs.d ~/.emacs.d

echo "Done."

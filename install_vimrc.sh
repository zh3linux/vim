git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
git clone https://github.com/zh3linux/vim.git
mv vim/.vimrc ~/.vimrc
vim <<-!
:BundleInstall
:q
:q
!

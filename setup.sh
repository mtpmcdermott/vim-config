# Let's always start clean
rm -rf ~/.vim

TempRoot=~/.vim/.tmp
BundleRoot=~/.vim/bundle
AutoloadRoot=~/.vim/autoload
ColorRoot=~/.vim/colors
mkdir -p ${BundleRoot}
mkdir -p ${AutoloadRoot}
mkdir -p ${ColorRoot}
mkdir -p ${TempRoot}

git clone https://github.com/tpope/vim-pathogen.git ~/.vim/bundle/pathogen
cp -f ~/.vim/bundle/pathogen/autoload/pathogen.vim ${AutoloadRoot}/pathogen.vim 

# Plugins
git clone  https://github.com/scrooloose/nerdtree.git ${BundleRoot}/nerdree # file tree
git clone https://github.com/vim-scripts/dbext.vim ${BundleRoot}/dbtext # sql client
git clone https://github.com/pearofducks/ansible-vim ${BundleRoot}/ansible-vim # ansible support
git clone https://github.com/ervandew/supertab ${BundleRoot}/supertab # autocomplete on tab

# Theme
git clone https://github.com/Lokaltog/vim-distinguished ${TempRoot}/vim-distinguished
cp -f ${TempRoot}/vim-distinguished/colors/distinguished.vim ${ColorRoot}/distinguished.vim

# Install vimrc
cp -f .vimrc ~/.vimrc

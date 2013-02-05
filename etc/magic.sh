#!/bin/bash
# run curl https://raw.github.com/naggie/dotfiles/master/etc/magic.sh | bash to install everything

TMPDIR=/tmp/banana$$/
mkdir $TMPDIR
cd $TMPDIR

# catch 22...
curl https://raw.github.com/naggie/dotfiles/master/etc/dependencies.sh > dependencies.sh
bash dependencies.sh || exit 1

git clone --depth 1 --recursive git://github.com/naggie/dotfiles.git
cd dotfiles/

./etc/install-motd.sh
sudo ./install.sh

cd ..
rm -rf dotfiles/

rm -rf $TMPDIR

#!/bin/bash
wget https://www.kernel.org/pub/software/scm/git/git-2.9.5.tar.gz
tar vfx git-2.9.5.tar.gz
cd git-2.9.5
sudo make configure
./configure --prefix=/usr
sudo make all
sudo make install
curl -L https://github.com/pyenv/pyenv-installer/raw/master/bin/pyenv-installer | bash
echo 'export PATH="$HOME/.pyenv/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(pyenv init -)"' >> ~/.bashrc
echo 'eval "$(pyenv virtualenv-init -)"' >> ~/.bashrc
source .bash_profile

pyenv install 3.6.6
pyenv global 3.6.6
python --version

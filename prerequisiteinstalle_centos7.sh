#!/bin/bash
sudo yum -y install gcc wget curl-devel expat-devel gettext-devel openssl-devel zlib-devel perl-ExtUtils-MakeMaker autoconf bzip2 bzip2-devel libbz2-dev openssl openssl-devel readline readline-devel
wget https://www.kernel.org/pub/software/scm/git/git-2.9.5.tar.gz
tar vfx git-2.9.5.tar.gz
cd git-2.9.5
make configure
./configure --prefix=/usr
make all
sudo make install
curl -L https://github.com/pyenv/pyenv-installer/raw/master/bin/pyenv-installer | bash
echo 'export PATH="$HOME/.pyenv/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(pyenv init -)"' >> ~/.bashrc
echo 'eval "$(pyenv virtualenv-init -)"' >> ~/.bashrc
pyenv install 3.6.6
pyenv rehash
pyenv global 3.6.6
python --version
source .bash_profile

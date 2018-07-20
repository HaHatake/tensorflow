#!/bin/bash
yum -y install gcc wget curl-devel expat-devel gettext-devel openssl-devel zlib-devel perl-ExtUtils-MakeMaker autoconf bzip2 bzip2-devel libbz2-dev openssl openssl-devel readline readline-devel
curl -LO https://raw.githubusercontent.com/HaHatake/tensorflow/master/prerequisiteinstalle_centos7_2.sh
sh prerequisiteinstalle_centos7_2.sh

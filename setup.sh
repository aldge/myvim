#!/bin/sh
#安装华丽丽的vim；
LOCFILE=/var/tmp/vim.lock
if [ -f ${LOCFILE} ];then
    echo "Already exist. Exit"
    echo ""
    exit 0
fi

scp -r work@cq01-fanshuang.epc.baidu.com:/home/work/gitvim/  /home/work/
vim='/home/work/.vim'
vimrc='/home/work/.vimrc'
if [ -d $vim ];then 
    mv $vim /home/work/.vim.bak
fi
if [ -f $vimrc ];then
    mv $vimrc /home/work/.vimrc.bak
fi
ln -s /home/work/gitvim/  $vim
ln -s /home/work/gitvim/.vimrc  $vimrc
touch /var/tmp//vim.lock
echo "Done"


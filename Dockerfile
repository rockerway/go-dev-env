FROM golang:1.13.7-alpine

RUN apk add --update alpine-sdk \
    && apk add vim bison ed gawk wget cmake python3-dev ctags linux-headers \
    && git clone https://github.com/VundleVim/Vundle.vim.git /root/.vim/bundle/Vundle.vim \
    && curl -fLo /root/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
COPY .vimrc /root/.vimrc
RUN vim +PlugInstall +qall \
    && echo "colorscheme monokai" >> /root/.vimrc \
    && vim +GoInstallBinaries +qall \
    && cd /root/.vim/plugged/YouCompleteMe && python3 install.py --go-completer

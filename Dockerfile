FROM golang:1.13.7-alpine

RUN apk add --update alpine-sdk
RUN apk add vim bison ed gawk wget cmake python3-dev ctags
# RUN git clone https://github.com/VundleVim/Vundle.vim.git /root/.vim/bundle/Vundle.vim
RUN curl -fLo /root/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
COPY .vimrc /root/.vimrc
RUN vim +PlugInstall +qall
RUN echo "colorscheme monokai" >> /root/.vimrc
RUN vim +GoInstallBinaries +qall
RUN cd /root/.vim/plugged/YouCompleteMe && python3 install.py --go-completer


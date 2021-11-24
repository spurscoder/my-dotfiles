
## Vim81 install

```
注意编译安装时候的问题：
./configure                                                                                               \
    --with-features=huge                                                                                  \
    --enable-python3interp                                                                                \
    --enable-pythoninterp                                                                                 \
    --with-python-config-dir=/ssd1/exec/wangjp/tools/miniconda/lib/python2.7/config/                      \
    --enable-rubyinterp                                                                                   \
    --enable-luainterp                                                                                    \
    --enable-perlinterp                                                                                   \
    --with-python3-config-dir=/ssd1/exec/wangjp/tools/python3/lib/python3.7/config-3.7m-x86_64-linux-gnu/ \
    --enable-multibyte                                                                                    \
    --enable-cscope                                                                                       \
    --prefix=/ssd1/exec/wangjp/tools/vim81
```

```
1.git clone this repo
2.mv * .vim

mkdir ~/bundle

3.git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
3.git clone https://github.com/spurscoder/Vundle.vim.git ~/.vim/bundle/vundle

4.BundleInstall
```

## 原始的README

- 见[README.origin.md](./README.origin.md)

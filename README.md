# dotfiles

### Common Tools

```
tmux == 3.0
tree == 1.7.0
vim == 8.1
zsh == 5.6.2
llvm == 7.0.0
cmake == 3.18.0
gcc == 7.3.0  # export GCC_HOME=/.../gcc5
boost == 1.68.0
node == 0.10.24

google-test == 1.8.0
thrift == 0.10.0
doxygen == 1.9.1

valgrind
graphviz
pypy == 3.7

zookeeper
```

```
java
google-java-format-1.8-all-deps.jar
maven == 3.6.2
java-1.8.0-openjdk-1.8.0.65-3.b17.el7.x86_64
```

### Others Tools

```
fzf
bat
cloc
tree
ack
ripgrep
fd
tree
bazel
clang-format
```

### Python Tools

```
mypy
black
isort
pytest
pdb
sphinx
ranger-fm
pre-commit
```

### c++ Tools

```
clang-format
valgrid
gdb
doxygen + sphinx
cmake
g++
clang
fmtlib
googletest vs catch2
```

### Python + C++

```
official tools
cython
cgi
pybind11
```

### 其他问题

- `oh-my-zsh`进入某些git目录，会很卡顿，
```
git config --add oh-my-zsh.hide-status 1  # restore 0
git config --add oh-my-zsh.hide-dirty 1  # restore 0
```

### mouse

```
defaults write NSGlobalDomain KeyRepeat -int 1
defaults write NSGlobalDomain InitialKeyRepeat -int 15
defaults write NSGlobalDomain ApplePressAndHoldEnabled -bool false

--------
鼠标双击阈值：defaults read -g com.apple.mouse.doubleClickThreshold
鼠标加速度：defaults read -g com.apple.mouse.scaling
滚动速度：defaults read -g com.apple.scrollwheel.scaling

如果鼠标使用有异常，可以再终端中读以上三个参数，并根据自己的需要适当调高调低
<!-- 鼠标双击阈值：defaults write -g com.apple.mouse.doubleClickThreshold 0.75 -->
鼠标加速度：defaults write -g com.apple.mouse.scaling 9
<!-- 滚动速度：defaults write -g com.apple.scrollwheel.scaling 0.75 -->

触控板速度(类似于鼠标)：
> defaults read -g com.apple.trackpad.scaling
> defaults write -g com.apple.trackpad.scaling 10

https://gist.github.com/brandonb927/3195465

trackpad鼠标速度提升
https://linearmouse.org/zh-CN/

```

### hosts

```
sudo killall -HUP mDNSResponder
```


### questions

```
1. source ~/.zshrc;; git clone suggestions and highlights
# zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
# zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
# zsh-completions
git clone https://github.com/zsh-users/zsh-completions ${ZSH_CUSTOM:=~/.oh-my-zsh/custom}/plugins/zsh-completions

2. https://github.com/powerline/fonts install 
>> https://github.com/ryanoasis/nerd-fonts#font-installation
```
git clone  nerd-fonts
./install.sh
```

3. pt mono for powerline 

4. install brew; brew install zsh;java;autojump;

5. install https://www.oracle.com/java/technologies/downloads/#jdk18-mac


6. install vim-plug; and pluginstall

  355  2022-08-24 19:29  brew install expect
  360  2022-08-24 19:31  brew install teleport
  366  2022-08-24 19:33  brew install go
  367  2022-08-24 19:33  go install github.com/pcarrier/gauth@latest
  370  2022-08-24 19:35  vi ~/.config/gauth.csv

7. cocinstall coc-python coc-pyright coc-clangd coc-json coc-css

8. tmux 3.1b; coc.nvim == v0.0.81
    > brew tap-new $USER/local-tmux
    > brew extract --version=3.1b tmux $USER/local-tmux
    > brew install tmux@3.1b

9. ccald
    https://placeless.net/blog/macos-dictionaries
    ./DefaultStyle.css

10. fzf; command line ctrl+r
    > brew install fzf
    > $(brew --prefix)/opt/fzf/install

11. bartender4; bob

12. brew install ctags  // for vim

13. colors:
    git@github.com:alacritty/alacritty-theme.git
    git@github.com:mbadolato/iTerm2-Color-Schemes.git
```

### static pre build binary

- clangd
- ripgrep
- fd

### Fish

```
brew install fish starship

# install ohmyfish
curl https://raw.githubusercontent.com/oh-my-fish/oh-my-fish/master/bin/install > install
fish install --path=~/.local/share/omf --config=~/.config/omf

https://github.com/alacritty/alacritty/issues/3962

> omf theme default
> omf install lavender
> curl -sL https://git.io/fisher | source && fisher install jorgebucaran/fisher

# starship config

# fish config

```


ssh -t USER@HOSTNAME /bin/sh

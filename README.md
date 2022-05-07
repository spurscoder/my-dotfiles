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
```

### hosts

```
sudo killall -HUP mDNSResponder
```

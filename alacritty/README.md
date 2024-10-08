

# 处理步骤

- 可以将iterm2中的colorscheme 装换成alacrity等其他终端可用的colorscheme
    - 所以，我们可以在iterm2中将颜色设置好之后，转成alacrity可用的颜色即可
    - 转换方法：
        - 用了`iTerm2-Color-Schemes`仓库中的脚本将itermcolors转换成xrdb格式之后，再转换成alacrity可用的yml格式
        ```
        > ./tools/iterm2xrdb < ~/.config/iterm2/my3.itermcolors > tmp/my3.xrdb
        <local> spurs@mac:~/coder/github/iTerm2-Color-Schemes ‹master*›
        > python tools/xrdb2alacritty.py ./tmp -d tmp.al

        > l ~/.config/alacritty/alacritty.yml
        ```

# 关于字体的问题

- ttf 可以参考powerline-fonts仓库中的思路，就是将ttf文件放到系统目录下，就可以访问对应的字体了
    - 如：mac下面的目录是`~/Library/Fonts`
    - Linux也有对应的路径

# 关于alacritty的字体设置

- 可参考：https://github.com/alacritty/alacritty/issues/957
- https://github.com/tonsky/FiraCode

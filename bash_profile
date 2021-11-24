# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs

if [ -d /ssd1/exec/wangjp/ ]; then
    # lib
    export LD_LIBRARY_PATH=/usr/lib64:$LD_LIBRARY_PATH

    # zsh
    export PATH=/ssd1/exec/wangjp/tools/zsh/bin:$PATH
    export SHELL=`which zsh`
    exec `which zsh` -l

elif [ $HOSTNAME = 'zj034' ]; then
    export LD_LIBRARY_PATH=/usr/lib64:$LD_LIBRARY_PATH

    export PATH=/disk2/wangjp/.tools/zsh/bin:$PATH
    export SHELL=`which zsh`
    exec `which zsh` -l

elif [ $HOSTNAME = 'zj186.corp.yodao.com' ]; then

    export PATH=/disk1/wangjp/tools/miniconda/bin:$PATH

fi



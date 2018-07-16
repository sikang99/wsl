# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# If set, the pattern "**" used in a pathname expansion context will
# match all files and zero or more directories and subdirectories.
#shopt -s globstar

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color|*-256color) color_prompt=yes;;
esac

# uncomment for a colored prompt, if the terminal has the capability; turned
# off by default to not distract the user: the focus in a terminal window
# should be on the output of commands, not on the prompt
#force_color_prompt=yes

if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
	# We have color support; assume it's compliant with Ecma-48
	# (ISO/IEC-6429). (Lack of such support is extremely rare, and such
	# a case would tend to support setf rather than setaf.)
	color_prompt=yes
    else
	color_prompt=
    fi
fi

if [ "$color_prompt" = yes ]; then
    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
else
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
fi
unset color_prompt force_color_prompt

# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
    ;;
*)
    ;;
esac

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# colored GCC warnings and errors
#export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

# -------------------------------------------------------------------
# Set User environment
PATH="/bin:/usr/bin:/usr/local/bin:$HOME/.local/bin"

# set Rust language dev environment
if [ -d "$HOME/.cargo" ]; then
	echo "Rust setting ..."
	export RSPATH=$HOME/.cargo
	export PATH=$PATH:$RSPATH/bin
fi

# set Golang dev environment
if [ -d "$HOME/coding/go" ]; then
	echo "Go setting ..."
	export GOPATH=$HOME/coding/go
	#export GOROOT=$GOPATH/root/gowasm
	export GOROOT=$GOPATH/root/go1.10.3
	#export GOROOT=$GOPATH/root/go1.11beta1
	export PATH=$PATH:$GOROOT/bin:$GOPATH/bin
fi

# set C++ language dev environment
if [ -d "$HOME/coding/cpp" ]; then
	echo "C++ setting ..."
	export CPPPATH=$HOME/coding/cpp
	export PATH=$PATH:$CPPPATH/bin
fi

# set C language dev environment
if [ -d "$HOME/coding/c" ]; then
	echo "C setting ..."
	export LD_LIBRAY_PATH=$LD_LIBRARY_PATH:/usr/lib:/usr/local/lib
	#export LIBRAY_PATH=$LIBRARY_PATH:/usr/local/lib
fi

# set Python language dev environment
if [ -d "$HOME/.virtualenvs" ]; then
	echo "Python setting ..."
	export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python
	export WORKON_HOME=$HOME/.virtualenvs
	#source /usr/local/bin/virtualenvwrapper.sh
fi

# set OpenCV environment
if [ -d "/usr/local/share/OpenCV" ]; then
	echo "OpenCV setting ..."
	export CGO_CPPFLAGS="-I/usr/local/include"
	export CGO_LDFLAGS="-L/usr/local/lib -lopencv_core -lopencv_face -lopencv_videoio -lopencv_imgproc -lopencv_highgui -lopencv_imgcodecs -lopencv_objdetect -lopencv_features2d -lopencv_video -lopencv_dnn -lopencv_xfeatures2d"
fi

alias profile='vim $HOME/.profile && source $HOME/.profile'
alias bashrc='vim $HOME/.bashrc && source $HOME/.bashrc'
alias vimrc='vim $HOME/.vimrc'

alias cls='clear'
alias d='clear && ls -cF'
alias chrome='chromium-browser&'
alias update='sudo apt update && sudo apt -y upgrade && sudo apt autoremove'
alias image='eog'
alias gterm='gnome-terminal &'
alias wcode='/mnt/c/Program\ Files/Microsoft\ VS\ Code/Code.exe'
alias xsrv='/mnt/c/Program\ Files/VcXsrv/vcxsrv.exe :0 -ac -terminate -lesspointer -multiwindow -clipboard -wgl -dpi auto'

. /usr/share/autojump/autojump.sh

if [ -d "$HOME/coding/cpp/src/emsdk/" ]; then
	echo "EMSDK setting ..."
	#. $HOME/coding/cpp/src/emsdk/emsdk_env.sh
	export EMSDK=/home/stoney/coding/cpp/src/emsdk
	export PATH=$PATH:$EMSDK/clang/fastcomp/build_incoming_64/bin
	#export PATH=$PATH:$EMSDK/node/8.9.1_64bit/bin
	export PATH=$PATH:$EMSDK/emscripten/incoming
	export PATH=$PATH:$EMSDK/binaryen/master_64bit_binaryen/bin
fi

# Set X-Window/docker environment variables
export DISPLAY='127.0.0.1:0.0'
export LIBGL_ALWAYS_INDIRECT=1
export DOCKER_HOST='tcp://0.0.0.0:2375'
export DOCKER_CONTENT_TRUST=0
export DOCKER_CONTENT_TRUST_SERVER=https://notary.docker.io
#export DOCKER_CERT_PATH=/mnt/c/Users/201711101/.docker/machine/certs
#export DOCKER_TLS_VERIFY=1

# Set user environment
export DOWNLOAD=/mnt/c/Users/201711101/Downloads
export WINHOME=/mnt/c/Users/201711101/AppData/Local/lxss

set bell-style none
umask 0022


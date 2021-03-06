#
# ~/.bashrc
#
# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples


# If not running interactively, don't do anything
[[ $- != *i* ]] && return

if [ -f ~/.bash_aliases ]; then
   source ~/.bash_aliases
fi
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

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color) color_prompt=yes;;
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

# Git prompt / Git bash completion
if [ -f /usr/share/git/completion/git-completion.bash ]; then
    source /usr/share/git/completion/git-completion.bash
fi
if [ -f /usr/share/git/completion/git-prompt.sh ]; then
    source /usr/share/git/completion/git-prompt.sh
fi
if [ -f /usr/share/git-core/contrib/completion/git-prompt.sh ]; then
    # centos
    source /usr/share/git-core/contrib/completion/git-prompt.sh
fi

# PS1='[\u@\h \W]\$ '
#export PS1="\[\033[38;5;6m\][\w]\[\033[38;5;15m\]\n[\t] \[\033[38;5;11m\]\u\[$(tput sgr0)\]\[\033[38;5;15m\]@\h\[$(tput sgr0)\] \[$(tput sgr0)\]\[\033[38;5;11m\]\\$\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]"
export PS1='\[\033[38;5;11m\]\u\[$(tput sgr0)\]\[\033[38;5;15m\]@\h\[$(tput sgr0)\] \[\033[38;5;6m\][\w]\[\033[38;5;15m\] $(__git_ps1 " (%s)") \n[\t] \[$(tput sgr0)\]\[\033[38;5;11m\]\\$\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]'

LS_COLORS=$LS_COLORS:'di=1;94:' ; export LS_COLORS

# give me more colors in the terminal
export TERM="xterm-256color"


export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

# added by Anaconda installer
# export PATH="/home/dchen/anaconda3/bin:$PATH"

# manually enable anaconda
alias ea="source ~/anaconda3/bin/activate root"

# LENS
export LENSDIR=~/code/Lens      # or wherever Lens is installed
export HOSTTYPE=x86_64-linux    # same as above during make
export LD_LIBRARY_PATH=${LD_LIBRARY_PATH}:${LENSDIR}/Bin/${HOSTTYPE}
export PATH=${PATH}:${LENSDIR}/Bin/${HOSTTYPE}

# ruby gems
export PATH="$PATH:/home/dchen/.gem/ruby/2.3.0/bin"
export PATH="$PATH:/home/dchen/.gem/ruby/2.4.0/bin"

# added by travis gem
[ -f /home/dchen/.travis/travis.sh ] && source /home/dchen/.travis/travis.sh

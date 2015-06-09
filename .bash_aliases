alias open='xdg-open'
alias glog='git log --oneline --graph --all --decorate'
alias docker='sudo docker'

alias clean='rm .*~'

alias em='emacsclient -nc -a ""'
alias emc='emacsclient -t -a ""'
EDITOR='emacsclient -a ""'

alias ls='ls --color=auto'
alias ll='ls -alhF'
alias la='ls -a'

alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'


################################################################################
# Aliases used for SDAL
################################################################################
alias vbi='cd ~/git/vbi'

alias mann='cd ~/git/vbi/multi-agent-neural-network && source activate mann'
alias mdme='cd ~/git/vbi/multidisciplinary-diffusion-model-experiments && source activate mann'

alias wos='cd ~/git/vbi && source activate wos2'


function rs {
    OS=$(uname -s)
    if [[ $OS == 'Linux' ]]; then
        pkill -f r_tunnel; autossh -M 0 -N -f r_tunnel && echo "rstudio tunnel created" && xdg-open http://localhost:8787/;
    fi
    if [[ $OS == 'Darwin' ]]; then
        pkill -f r_tunnel; autossh -M 0 -N -f r_tunnel && echo "rstudio tunnel created" && open -a "/Applications/Google Chrome.app" 'http://localhost:8787/';
    fi
}

function pg {
    OS=$(uname -s)
    if [[ $OS == 'Linux' ]]; then
        pkill -f pg_tunnel; autossh -M 0 -N -f pg_tunnel && echo "postgresql tunnel created" && `nohup sh -c 'pgadmin3' > /dev/null &`;
    fi
    if [[ $OS == 'Darwin' ]]; then
        pkill -f pg_tunnel; autossh -M 0 -N -f pg_tunnel && echo "postgresql tunnel created" && `open -a pgadmin3`;
    fi
}

rmount() {
  if [[ $(df | grep $1 | wc -l) -eq 0 ]]; then
	  local host folder mname
	  host="${1%%:*}:"
	  [[ ${1%:} == ${host%%:*} ]] && folder='' || folder=${1##*:}
	  if [[ $2 ]]; then
	    mname=$2
	  else
	    mname=${folder##*/}
	    [[ "$mname" == "" ]] && mname=${host%%:*}
	  fi

	  if [[ $(grep -i "host ${host%%:*}" ~/.ssh/config) != '' ]]; then
	    mkdir -p ~/mounts/$mname > /dev/null
	    sshfs $host$folder ~/mounts/$mname -oauto_cache,reconnect,follow_symlinks -o IdentityFile=~/.ssh/id_rsa && echo "mounted ~/mounts/$mname"
	  else
	    echo "No entry found for ${host%%:*}"
	    return 1
	  fi
  else
  	  echo "already mounted";
  fi
}

# Remote Umount, unmounts and deletes local folder (experimental, watch you step)
rumount() {
  if [[ $1 == "-a" ]]; then
    ls -1 ~/mounts/|while read dir
    do
      [[ $(mount | grep "mounts/$dir") ]] && umount ~/mounts/$dir
      [[ $(ls ~/mounts/$dir) ]] || rm -rf ~/mounts/$dir
    done
  else
    [[ $(mount | grep "mounts/$1") ]] && umount ~/mounts/$1
    [[ $(ls ~/mounts/$1) ]] || rm -rf ~/mounts/$1
  fi
}
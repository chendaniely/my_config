alias open='xdg-open'
alias glog='git log --oneline --graph --all --decorate'
alias docker='sudo docker'


alias nsfr='cd ~/git/columbia/nsf-cross-sector-mfi/src'

################################################################################
# Aliases used for SDAL
################################################################################
alias vbi='cd ~/git/vbi'

alias mann='cd ~/git/vbi/multi-agent-neural-network && source activate mann'
alias mdme='cd ~/git/vbi/multidisciplinary-diffusion-model-experiments && source activate mann'
alias scp_snowmane_batch_r=' scp snowmane:/home/sdal/mann/data/git/multidisciplinary-diffusion-model-experiments/experiments/batch_analysis.html ./'

alias wos='cd ~/git/vbi && source activate wos2'

function rs {
    OS=$(uname -s)
    if [[ $OS == 'Linux' ]]; then
        pkill -f r_tunnel; autossh -M 0 -N -f r_tunnel && echo "rstudio tunnel created" && firefox --new-window http://localhost:8787/ &
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

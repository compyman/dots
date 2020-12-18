export PATH="$HOME/.config/guix/current/bin:$PATH"
export INFOPATH="$HOME/.config/guix/current/share/info:$INFOPATH"

export TERMINAL="/usr/bin/alacritty"

# virtualenvwrapper setup
export WORKON_HOME=~/.venvs
source /usr/bin/virtualenvwrapper_lazy.sh

# pyenv setup
eval "$(pyenv init -)"

unset SSH_AGENT_PID
if [ "${gnupg_SSH_AUTH_SOCK_by:-0}" -ne $$ ]; then
  export SSH_AUTH_SOCK="$(gpgconf --list-dirs agent-ssh-socket)"
fi
export CIRCLECI_TOKEN=06d27802e055a9232af64b3b1aa2931fd149dabe
export GITHUB_TOKEN=d8eb0247e55b7869e27b6f1715f5dc928ad5c242
export ALTERNATE_EDITOR=""
if [ -n "$GUIX_ENVIRONMENT" ]
then
    export PS1="\u@\h \w [dev]\$ "
fi

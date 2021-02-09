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
export ALTERNATE_EDITOR=""
if [ -n "$GUIX_ENVIRONMENT" ]
then
    export PS1="\u@\h \w [dev]\$ "
fi

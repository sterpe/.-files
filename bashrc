if [ "${TERM}" = "xterm-kitty" ] ; then
  source /dev/stdin <<<"$(kitty + complete setup bash)"
elif [ -d /Applications/kitty.app ] ; then
  alias kitty='open /Applications/kitty.app'
fi

alias ed='$EDITOR'
alias tape='tput sc; tput home; seq 8 8 80 | sed -n ''s/.*/+\&/p'' | xargs printf '%8s' | sed -n ''s/\ /\./gp'' | xargs printf '%s'; tput rc'
alias ls='ls -FBG'
alias ll='ls -aFBGl'

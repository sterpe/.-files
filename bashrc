if [ "${TERM}" = "xterm-kitty" ] ; then
  source /dev/stdin <<<"$(kitty + complete setup bash)"
fi

alias ed='$EDITOR'
alias ls='ls -FBG'
alias ll='ls -aFBGl'

if [ "${TERM}" = "xterm-kitty" ] ; then
  source /dev/stdin <<<"$(kitty + complete setup bash)"
elif [ -d /Applications/kitty.app ] ; then
  alias kitty='open /Applications/kitty.app'
fi

alias ed='$EDITOR'
alias ls='ls -FBG'
alias ll='ls -aFBGl'

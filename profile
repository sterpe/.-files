# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
# umask 022

# if running bash
if [ -n "$BASH_VERSION" ] ; then
  # include .bashrc if it exists
  if [ -f "$HOME/.bashrc" ] ; then
    . "$HOME/.bashrc"
  fi
fi

# set PATH so it includes user's private /bin if it exists
if [ -d "$HOME/bin" ] ; then
  export PATH="$HOME/bin:$PATH"
fi

if [ -x /usr/local/bin/rlwrap ] ; then
  EDITOR='/usr/local/bin/rlwrap -nc ed'
else
  EDITOR='ed'
fi

export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad


# macOS VulkanSDK/MoltenVK configuration
  # Symlink to versioned SDK
export VULKAN_SDK="$HOME/lib/vulkansdk/macOS"

export PATH="$VULKAN_SDK/bin:$PATH"
export DYLD_LIBRARY_PATH="$VULKAN_SDK/lib:$DYLD_LIBRARY_PATH"

export VK_ICD_FILENAMES="$VULKAN_SDK/etc/vulkan/icd.d/MoltenVK_icd.json"
export VK_LAYER_PATH="$VULKAN_SDK/etc/vulkan/explicit_layer.d"

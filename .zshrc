export ZDOTDIR=$HOME/.zsh
source $ZDOTDIR/zplug.zsh

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/yuto/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/yuto/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/yuto/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/yuto/google-cloud-sdk/completion.zsh.inc'; fi

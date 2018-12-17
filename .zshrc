export ZDOTDIR=$HOME/.zsh
source $ZDOTDIR/zplug.zsh

# CLI履歴設定
export HISTFILE=$HOME/.zsh_history
export HISTSIZE=1000
export SAVEHIST=10000
setopt hist_ignore_dups

# GO設定
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin

# The next line updates PATH for the Google Cloud SDK.
if [ -f "${HOME}/google-cloud-sdk/path.zsh.inc" ]; then
  source "${HOME}/google-cloud-sdk/path.zsh.inc";
fi

# The next line enables shell command completion for gcloud.
if [ -f "${HOME}/google-cloud-sdk/completion.zsh.inc" ]; then
  source "${HOME}/google-cloud-sdk/completion.zsh.inc";
fi

function history-all { history -E 1 }

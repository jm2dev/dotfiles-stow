# Setup fzf
# ---------
if [[ ! "$PATH" == */home/jm/.fzf/bin* ]]; then
  export PATH="$PATH:/home/jm/.fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/home/jm/.fzf/shell/completion.zsh" 2> /dev/null

# Key bindings
# ------------
source "/home/jm/.fzf/shell/key-bindings.zsh"


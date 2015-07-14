
DOT_FILES="$HOME/dev/dotfiles"

# Terminal config
source "$DOT_FILES/terminal/startup.sh"
source "$DOT_FILES/terminal/completion.sh"
source "$DOT_FILES/terminal/highlight.sh"

# ZSH
source "$DOT_FILES/zsh/aliases.sh"
source "$DOT_FILES/zsh/functions.sh"
source "$DOT_FILES/zsh/git.sh"
source "$DOT_FILES/zsh/nvm.sh"
source "$DOT_FILES/zsh/dnvm.sh"
source "$DOT_FILES/zsh/go.sh"
source "$DOT_FILES/zsh/ruby.sh"
source "$DOT_FILES/zsh/vscode.sh"
source "$DOT_FILES/zsh/gcloud.sh"

# Colors
autoload -U colors && colors

# Load and execute the prompt theming system.
fpath=("$DOT_FILES/terminal" $fpath)
autoload -Uz promptinit && promptinit
prompt 'sandcastle'

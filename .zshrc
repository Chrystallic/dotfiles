# Path to your oh-my-zsh installation.
export ZSH="/usr/share/oh-my-zsh"

ZSH_THEME="spaceship"

SPACESHIP_PROMPT_SEPARATE_LINE="${SPACESHIP_PROMPT_SEPARATE_LINE=false}"
# SPACESHIP_PROMPT_SEPARATE_LINE = FALSE
SPACESHIP_PROMPT_ADD_NEWLINE="${SPACESHIP_PROMPT_ADD_NEWLINE=false}"
# SPACESHIP_CHAR_SYMBOL="${SPACESHIP_CHAR_SYMBOL=>>> }"
SPACESHIP_CHAR_SYMBOL="${SPACESHIP_CHAR_SYMBOL=››› }"
# SPACESHIP_CHAR_SYMBOL = "›››"

source $ZSH/oh-my-zsh.sh
source ~/.config/aliasrc

# User configuration

SPACESHIP_PROMPT_ORDER=(
  time          # Time stamps section
  user          # Username section
  dir           # Current directory section
  host          # Hostname section
  git           # Git section (git_branch + git_status)
  hg            # Mercurial section (hg_branch + hg_status)
  package       # Package version
  node          # Node.js section
  ruby          # Ruby section
  elixir        # Elixir section
  xcode         # Xcode section
  swift         # Swift section
  golang        # Go section
  php           # PHP section
  rust          # Rust section
  haskell       # Haskell Stack section
  julia         # Julia section
  docker        # Docker section
  aws           # Amazon Web Services section
  venv          # virtualenv section
  conda         # conda virtualenv section
  pyenv         # Pyenv section
  dotnet        # .NET section
  ember         # Ember.js section
  kubecontext   # Kubectl context section
  terraform     # Terraform workspace section
  exec_time     # Execution time
  line_sep      # Line break
  battery       # Battery level and status
  vi_mode       # Vi-mode indicator
  jobs          # Background jobs indicator
  exit_code     # Exit code section
  char          # Prompt character
)


# SPACESHIP_PROMPT_ADD_NEWLINE = "true";
# SPACESHIP_CHAR_PREFIX = "
# SPACESHIP_PROMPT_SEPARATE_LINE = "false"; 

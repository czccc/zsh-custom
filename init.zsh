#
# Custom aliases/settings
#

# any custom stuff should go here.
# ensure that 'custom' exists in the zmodules array in your .zimrc

typeset -g HISTFILE=${ZDOTDIR:-${HOME}}/.zsh_history

if (( $+commands[zoxide] )); then
  export _ZO_ECHO=1
  eval "$(zoxide init zsh)"
  alias zz=__zoxide_zi
fi


if (( $+commands[lazygit] )); then
  alias lg=lazygit
fi

if (( $+commands[lazydocker] )); then
  alias lzd=lazydocker
fi

if (( $+commands[cargo] )); then
  export PATH="~/.cargo/bin:${PATH}"
fi

alias ls='ls --color=auto'
alias ll='ls -hl'
alias l='ll -a'
alias la='ll -a'

if (( $+commands[eza] )); then
  alias ls='eza --color=auto --group-directories-first'
  alias ll='ls -l --git'        # Long format, git status
  alias l='ll -a --git-ignore'  # Long format, all files
  alias la='ll -a'              # Long format, all files
  alias lr='ll -T'              # Long format, recursive as a tree
  alias lx='ll -sextension'     # Long format, sort by extension
  alias lk='ll -ssize'          # Long format, largest file size last
  alias lt='ll -smodified'      # Long format, newest modification time last
  alias lc='ll -schanged'       # Long format, newest status change (ctime) last
fi

if (( $+commands[nvim] )); then
  alias vim="nvim"
  alias nv="nvim"
fi

if (( $+commands[tmux] )); then
  alias t="tmux new -As0"
  alias tm="tmux"
fi


alias vz="vim ~/.zshrc && source ~/.zshrc"
alias vzz="vim ~/.zimrc"
alias gfc="git clone --recursive"
alias gst="git status"



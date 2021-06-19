typeset -AHg FX FG BG

FX=(
  reset     "%{[00m%}"
  bold      "%{[01m%}" no-bold      "%{[22m%}"
  italic    "%{[03m%}" no-italic    "%{[23m%}"
  underline "%{[04m%}" no-underline "%{[24m%}"
  blink     "%{[05m%}" no-blink     "%{[25m%}"
  reverse   "%{[07m%}" no-reverse   "%{[27m%}"
)

for color in {000..255}; do
  FG[$color]="%{[38;5;${color}m%}"
  BG[$color]="%{[48;5;${color}m%}"
done

# Show all 256 colors with color number
function spectrum_ls() {
  local ZSH_SPECTRUM_TEXT=${ZSH_SPECTRUM_TEXT:-Arma virumque cano Troiae qui primus ab oris}
  for code in {000..255}; do
    print -P -- "$code: $FG[$code]$ZSH_SPECTRUM_TEXT%{$reset_color%}"
  done
}

# Show all 256 colors where the background is set to specific color
function spectrum_bls() {
  local ZSH_SPECTRUM_TEXT=${ZSH_SPECTRUM_TEXT:-Arma virumque cano Troiae qui primus ab oris}
  for code in {000..255}; do
    print -P -- "$code: $BG[$code]$ZSH_SPECTRUM_TEXT%{$reset_color%}"
  done
}

# If you come from bash you might have to change your $PATH.
export PATH=$HOME/.yarn/bin/:$PATH
export PATH=$PATH:~/.zig/

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

alias vim="nvim"
alias rtop="btm --color gruvbox"
alias branch="~/.branch-fzf.sh"

ZSH_THEME="zeb"

plugins=(git)

source $ZSH/oh-my-zsh.sh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# fnm
export PATH=$HOME/.fnm:$PATH
eval "`fnm env`"

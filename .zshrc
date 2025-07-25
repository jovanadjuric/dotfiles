# Add deno completions to search path
if [[ ":$FPATH:" != *":/Users/jovana/.zsh/completions:"* ]]; then export FPATH="/Users/jovana/.zsh/completions:$FPATH"; fi
# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi
# p10k config
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh


# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="powerlevel10k/powerlevel10k"
HYPHEN_INSENSITIVE="true"

plugins=(
    git
    zsh-syntax-highlighting
    vi-mode
    asdf
)

source $ZSH/oh-my-zsh.sh

# Aliases
alias vim="nvim"
alias lg="lazygit"
alias lzd="lazydocker"
alias yazi-ya=/

# PATH
export PATH="$(go env GOPATH)/bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"
export PATH="/opt/homebrew/opt/libpq/bin:$PATH"
export PATH="$HOME/.config/composer/vendor/bin:$PATH"
export PATH="/opt/homebrew/opt/openjdk@17/bin:$PATH"
export PATH="${ASDF_DATA_DIR:-$HOME/.asdf}/shims:$PATH"
export CPPFLAGS="-I/opt/homebrew/opt/openjdk@17/include"

export VISUAL=nvim
export EDITOR="$VISUAL"

export MANPAGER="nvim +Man!"

eval "$(zoxide init zsh)"

# Yazi quit opens the cwd
function yy() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")"
	yazi "$@" --cwd-file="$tmp"
	if cwd="$(cat -- "$tmp")" && [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]; then
		builtin cd -- "$cwd"
	fi
	rm -f -- "$tmp"
}

autoload -Uz compinit
compinit


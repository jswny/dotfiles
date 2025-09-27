eval "$(/opt/homebrew/bin/brew shellenv)"

alias ll "ls -la"
alias cat bat

alias gs "git status"
alias gc "git commit -m"
alias gl "git log"
alias gd "git diff"
alias gp "git pull"
alias gaa "git add ."
alias gpp "git push"
alias gca "git add . && git commit --amend --no-edit && git push -f"

mise activate fish | source
source ~/.atuin/bin/env.fish

fish_add_path ~/.orbstack/bin
fish_add_path ~/.cargo/bin
fish_add_path ~/.bun/bin

if status is-interactive
    set -gx EDITOR "zed --wait"

    function rg
        command rg --json -C 2 $argv | delta
    end

    atuin init fish | source
end

set -gx BAT_THEME ansi
set -gx FZF_DEFAULT_OPTS "--color=16"

source ~/.config/fish/local.config.fish

function claude
    env SHELL=/bin/zsh claude $argv
end

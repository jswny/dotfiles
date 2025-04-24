eval "$(/opt/homebrew/bin/brew shellenv)"

alias ll "ls -la"
alias cat "bat"

alias gs "git status"
alias gl "git log"
alias gd "git diff"
alias gp "git pull"
alias gpp "git push"
alias gca "git add . && git commit --amend --no-edit && git push -f"

if status is-interactive
    set -gx EDITOR "zed --wait"

    function rg
        command rg --json -C 2 $argv | delta
    end
end

fish_add_path ~/.orbstack/bin
fish_add_path ~/.cargo/bin
fish_add_path ~/.bun/bin

set -gx BAT_THEME "ansi"
set -gx FZF_DEFAULT_OPTS "--color=16"

function claude
    env SHELL=/bin/zsh claude $argv
end

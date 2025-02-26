eval "$(/opt/homebrew/bin/brew shellenv)"

alias ll "ls -la"
alias cat "bat"

alias gs "git status"
alias gl "git log"
alias gp "git pull"
alias gpp "git push"
alias gca "git add . && git commit --amend --no-edit && git push -f"

git config --global diff.external difft

if status is-interactive
    set -gx EDITOR "zed --wait"
end

set -U fish_user_paths $fish_user_paths ~/.orbstack/bin
set -U fish_user_paths $fish_user_paths ~/.cargo/bin

if not functions --query fisher
    curl -sL https://raw.githubusercontent.com/jorgebucaran/fisher/main/functions/fisher.fish | source
    echo "Run fisher update to install plugins"
end

if status --is-interactive
    fenv source /etc/profile
end

switch (uname)
    case Linux
        # Deno
        set -gx DENO_INSTALL $HOME/.deno
        fish_add_path --path $DENO_INSTALL/bin
    case Darwin
        # macOS specific configuration

        # Homebrew
        fish_add_path --path /opt/homebrew/bin
        fish_add_path --path /opt/homebrew/sbin

        # miniforge
        if test -f /opt/homebrew/Caskroom/miniforge/base/bin/conda
            status is-interactive && eval /opt/homebrew/Caskroom/miniforge/base/bin/conda "shell.fish" "hook" $argv | source
        end
end

set fish_greeting

# catppuccin theme
set --global theme_color_scheme "Catppuccin Mocha"

# bun
set -gx BUN_INSTALL $HOME/.bun
fish_add_path --path $BUN_INSTALL/bin

# cargo
fish_add_path --path $HOME/.cargo/bin

# composer
fish_add_path --path $HOME/.composer/vendor/bin

# mise
if type -q mise
    mise activate fish | source
    mise completion fish > $HOME/.config/fish/completions/mise.fish
end

# fzf
set -x FZF_DEFAULT_OPTS "\
--color=bg+:#363a4f,bg:#24273a,spinner:#f4dbd6,hl:#ed8796 \
--color=fg:#cad3f5,header:#ed8796,info:#c6a0f6,pointer:#f4dbd6 \
--color=marker:#b7bdf8,fg+:#cad3f5,prompt:#c6a0f6,hl+:#ed8796 \
--color=selected-bg:#494d64 \
--multi"

# aliases
alias g="git"
alias gs="git status"
alias gd="git diff"
alias ga="git add"
alias gc="git commit"
alias gp="git push"
alias lg="lazygit"

alias ls="eza -l"
alias la="eza -la"

# ==============================================================================
# MIDNIGHT CITYSCAPE - CUSTOM .BASHRC
# ==============================================================================

# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# ------------------------------------------------------------------------------
# 1. COLOR DEFINITIONS (ANSI Escape Sequences)
# Matches: Amber (#E76F51), Orange (#F4A261), Warm Yellow, Muted Gray, Midnight Blue
# ------------------------------------------------------------------------------
C_RESET='\[\e[0m\]'
C_AMBER='\[\e[38;2;231;111;81m\]'
C_ORANGE='\[\e[38;2;244;162;97m\]'
C_YELLOW='\[\e[38;2;233;196;106m\]'
C_TEAL='\[\e[38;2;42;157;143m\]'
C_GRAY='\[\e[38;2;140;148;170m\]'
C_DARK_BLUE='\[\e[38;2;30;34;55m\]'
C_BOLD='\[\e[1m\]'

# ------------------------------------------------------------------------------
# 2. CUSTOM PROMPT (PS1)
# Format: user@hostname ~ > (Warm glowing orange/amber accents)
# ------------------------------------------------------------------------------
set_prompt() {
    local EXIT_CODE=$?
    local PROMPT_CHAR=">"
    
    # Change prompt symbol color on error
    if [ $EXIT_CODE -ne 0 ]; then
        PROMPT_CHAR="${C_AMBER}!>${C_RESET}"
    else
        PROMPT_CHAR="${C_ORANGE}>${C_RESET}"
    fi

    PS1="${C_AMBER}\u${C_GRAY}@${C_YELLOW}\h ${C_TEAL}\w ${PROMPT_CHAR} ${C_RESET}"
}

PROMPT_COMMAND=set_prompt

# ------------------------------------------------------------------------------
# 3. ALIASES & COLOR OUTPUT
# Enable colors for ls, grep, and modern terminal tools
# ------------------------------------------------------------------------------
alias ls='ls --color=auto'
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

# Quick Navigation & Quality of Life
alias ..='cd ..'
alias ...='cd ../..'
alias cls='clear'
alias update='sudo apt update && sudo apt upgrade -y'

# ------------------------------------------------------------------------------
# 4. ALACRITTY / TERMINAL COLOR EXPORT
# Color variables for CLI scripts and applications
# ------------------------------------------------------------------------------
export TERM="xterm-256color"
export COLORTERM="truecolor"

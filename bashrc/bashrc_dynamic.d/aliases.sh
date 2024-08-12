# Basic directory operations with improved formatting
alias ll='ls -alF --color'
alias la='ls -A --color'
alias l='ls -CF --color'
alias ls='ls --color'

# Directory navigation shortcuts
alias ..='cd ..'
alias ...='cd ../../'
alias ....='cd ../../../'
alias .....='cd ../../../../'

# Networking and system monitoring
alias ports='netstat -tulanp'  # Show all open ports

# Quick shortcuts for system updates and maintenance (Debian/Ubuntu specific)
alias update='sudo apt-get update && sudo apt-get upgrade'

# Git aliases for simplified command line Git operations
alias gs='git status'
alias ga='git add'
alias gc='git commit'
alias gp='git push'
alias gpull='git pull'


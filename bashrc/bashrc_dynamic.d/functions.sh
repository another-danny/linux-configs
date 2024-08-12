# Function to fetch the current Git branch, if it exists
git_branch() {
  local branch
  if branch=$(git rev-parse --abbrev-ref HEAD 2> /dev/null); then
    if [[ "$branch" != "HEAD" ]]; then
      echo " ($branch)"
    else
      echo " (detached)"
    fi
  fi
}
# Function to update the prompt
update_prompt() {
  local git_info
  git_info=$(git_branch)

  # Build the prompt string
  PS1="${RED}┌─[${LIGHT_GREY}\D{%a %b-%d %H:%M:%S}${RED}]${RESET} - "
  PS1+="${RED}[${LIGHT_GREY}$(get_ip)${RED}]${RESET} - "
  PS1+="${RED}[${LIGHT_GREY}\w${RED}]${RESET}"
  if [[ -n $git_info ]]; then
    PS1+=" -${BRIGHT_ORANGE}$git_info${RESET}\n"
  else
    PS1+="\n"
  fi
    PS1+="${RED}└─> ${RESET}"
}
get_ip() {
  ip a show enp6s0 | awk '/inet / { print $2 }' | sed "s/\/24//"
}

# Function to get the current Git branch if it exists
git_branch() {
  local branch
  if branch=$(git rev-parse --abbrev-ref HEAD 2> /dev/null); then
    if [[ "$branch" != "HEAD" ]]; then
      echo " ($branch)"
    else
      # Detached HEAD state (no branch)
      local tag=$(git describe --tags --exact-match 2> /dev/null)
      if [[ -n $tag ]]; then
        echo " ($tag)"
      else
        echo " (detached)"
      fi
    fi
  fi
}


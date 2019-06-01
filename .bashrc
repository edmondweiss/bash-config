
# Add git completion functionality and git prompt info.
# The scripts can be found at:
# https://github.com/git/git in path contrib/completion/.
# More information can be found in the git docs at under the section
# "Git in Bash".
GIT_COMPLETION_FILE='~/.git-completion.bash'
if [[ -f "$GIT_COMPLETION_FILE" ]]; then
  source "$GIT_COMPLETION_FILE"
fi

GIT_PROMPT_FILE='~/.git-prompt.sh'
if [[ -f "$GIT_PROMPT_FILE" ]]; then
  source "$GIT_PROMPT_FILE"
fi
export GIT_PS1_SHOWDIRTYSTATE=1
export GIT_PS1_SHOWSTASHSTATE=1
export GIT_PS1_SHOWUNTRACKEDFILES=1
export GIT_PS1_SHOWUPSTREAM='auto verbose'
GIT_PS1_DESCRIBE_STYLE='branch'

# Removes background color from directories for better readability.
LS_COLORS="ow=01;36;40" && export LS_COLORS

# Customizes the shell prompt with the following format:
# [user@host][time][directory]$
PS1='[\[\033[1;34m\]\u@\h\[\033[0m\]][\[\033[1;36m\]\@\[\033[0m\]][\[\033[1;32m\]\w\[\033[0m\]]\[\033[1;35m\]$(__git_ps1 "(%s)")\n\[\033[1;33m\]\$\[\033[1;37m\] '
export PS1

# Removes background color from directories for better readability.
LS_COLORS="ow=01;36;40" && export LS_COLORS

# Customizes the shell prompt with the following format:
# [user@host][time][directory]$
PS1="[\[\033[1;34m\]\u@\h\[\033[0m\]][\[\033[1;36m\]\@\[\033[0m\]][\[\033[1;32m\]\w\[\033[0m\]]\n\[\033[1;33m\]\$\[\033[1;37m\] "
export PS1

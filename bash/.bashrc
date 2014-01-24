##### NOTES #####
# If run succesfully bash environment:
#
# $ brew install autoenv
# $ brew install bash-completion
################################

export PATH="/usr/local/bin:/usr/local/sbin:$PATH"
export PATH="/usr/local/share/python:$PATH"

# For Locale
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export PATH="/usr/local/share/python:$PATH"

# AutoEnv
source /usr/local/opt/autoenv/activate.sh

# bash-completion
if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
fi

# git-completion
source ~/.git-completion.bash

# bash-prompt
source ~/.bash_prompt.sh

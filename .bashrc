alias cat='bat -p --pager=none '
alias findbig='find . -type f -size +1000 -exec ls -lh {} \; '
alias ll='lsd -AFl '
#alias ll='ls -al '
alias pp="echo '$PATH' | tr : '\n' "
#alias rand='echo `jot -r 1 0 1000`/1000 | bc -1 | cut -c 1-4 '

# pulls information from the following website: https://cheat.sh/
man () {
  if [ $# -ne 1 ]
  then
    echo "Usage: man <name>"
  else
    curl https://cheat.sh/$1
  fi
}

# workaround to configure bash to display active conda environment in the prompt
# not sure why conda wasn't working properly to begin with...
source ~/anaconda3/etc/profile.d/conda.sh

# comment the following line to turn off auto activate base
conda activate ml

# Oh My Posh
eval "$(oh-my-posh init bash --config C:/Users/rucyw/AppData/Local/Programs/oh-my-posh/themes/jandedobbeleer.omp.json)"

# make sure to add these environment variables as user variables in the control panel
# in order for Oh My Posh and Conda to work well together in Git Bash
# otherwise, commands like `conda activate` and `conda deactivate` won't work
# https://github.com/JanDeDobbeleer/oh-my-posh/issues/939
PYTHONIOENCODING="UTF-8"
PYTHONLEGACYWINDOWSSTDIO="UTF-8"

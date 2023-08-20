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

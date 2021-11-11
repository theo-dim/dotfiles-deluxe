###########################################################################################################################
#                                                                                                                         #
#                                                       BASH PROFILE                                                      #
#                                                                                                                         #
###########################################################################################################################
#                                                                                                                         #
# Description: Configuration file for bash. 	 	                                                                  #
# Author: Theodosios Dimitrasopoulos                                                                                      #
#                                                                                                                         #
########################################################## THEME ##########################################################
#                                                                                                                         #
# Configure color scheme
COLOR_SCHEME=dark # choose between dark and light
#                                                                                                                         #
######################################################### SOURCING ########################################################
#                                                                                                                         #
# .bashrc: interactive non-login shells masterfile
# if [ -f "${HOME}/.bashrc" ];
# then
#	 source "${HOME}/.bashrc"
# fi
#
# .bash_functions: functions masterfile
  if [ -f "${HOME}/.bash_functions" ];
  then
	  source "${HOME}/.bash_functions"
	  #echo 'Functions loaded successfully'
  fi
#
# .bash_aliases: aliases masterfile
  if [ -f "${HOME}/.bash_aliases" ];
  then
	  source "${HOME}/.bash_aliases"
	  #echo 'Aliases loaded successfully'
  fi
#                                                                                                                         #
###################################################### MISCELLANEOUS ######################################################
#                                                                            						  #
export VISUAL=atom
export EDITOR=$VISUAL
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
#                                                            								  #
######################################################### THEMES ##########################################################
#                                                                                                                         #
# PS1=" \[\033[01;36m\]\w >\[\033[34m\]>\[\033[00m\] "
#
#                       ┌─────(theo_dim)─────(~)
#                       └> $
#
# PS1="\n \[\033[0;34m\]┌─────(\[\033[1;35m\]\u\[\033[0;34m\])─────(\[\033[1;32m\]\w\[\033[0;34m\]) \n └> \[\033[1;36m\]\$ \[\033[0m\]"
#
#                       ╭─────  theo_dim ───── ~ 
#                       ╰ $
#
# PS1="\n \[\033[0;34m\]╭─────\[\033[0;31m\]\[\033[0;37m\]\[\033[41m\] $OS_ICON \u \[\033[0m\]\[\033[0;31m\]\[\033[0;34m\]─────\[\033[0;32m\]\[\033[0;30m\]\[\033[42m\] \w \[\033[0m\]\[\033[0;32m\] \n \[\033[0;34m\]╰ \[\033[1;36m\]\$ \[\033[0m\]"
#
#                       ╭─  theo_dim  ~ 
#                       ╰ $
#
OS_ICON=
PS1="\n \[\033[1;32m\]╭\[\033[1;32m\]$OS_ICON \u: \[\033[1;37m\]\w \n \[\033[1;32m\]╰ \[\033[1;37m\]"
#                                                   						                          #
######################################################## ANACONDA #########################################################
#                                                                                                                         #
# Anaconda Environment Selection - Plese set CONDA_BASE_DIR to the directory containing the base installation of anaconda
export CONDA_BASE_DIR=/cygdrive/c/Users/theon/anaconda3
#                                                                                                                         
# Proxy Servers & Network Setup (if needed)
export http_proxy=
export https_proxy=
# Ignore carriage returns when using a Cygwin environment
export SHELLOPTS
set -o igncr
#                                                                                                                         #
###########################################################################################################################
#			                                                          	 				  #
# Manage conda environments for Python.  We check the environment variable $CONDA_DEFAULT_ENV to see which environment is
# desired.  The default (root) environment will be chosen if nothing is specified. Note that this variable will be managed
# by the cyg-activate ( ) function we have defined below, specifically for the purpose of changing environments. The root
# environment is also handled slightly different from the others when it comes to setting the CONDA_DEFAULT_ENV variable.
#                                                                                                                         #
###########################################################################################################################
#                                                                                                                         #
if [ ${CONDA_DEFAULT_ENV} ] && [ ${CONDA_DEFAULT_ENV} != 'root' ]
then # SELECT ONE OF THE NON-DEFAULT ENVIRONMENTS
	export CONDA_PREFIX=${CONDA_BASE_DIR}/envs/${CONDA_DEFAULT_ENV}

else # SELECT THE DEFAULT ENVIRONMENT (and set CONDA_DEFAULT_ENV full path)
	export CONDA_DEFAULT_ENV=root
	export CONDA_PREFIX=${CONDA_BASE_DIR}
fi
#                                                                                                                         #
###########################################################################################################################
#                                                                                                                         #
# Define cyg-conda and cyg-activate to facilitate management of conda
alias cyg-conda=${CONDA_BASE_DIR}/Scripts/conda.exe
cyg-activate() {
    export CONDA_DEFAULT_ENV=$1
        source ~/.bash_profile
	    cyg-conda info --envs
    }
#                                                                                                                         #
########################################################## PATHS ##########################################################
#                                                                                                                         #
PATH=$PATH:$CONDA_PREFIX			    # PATH - ALl of the anaconda/miniconda path entries appear first
PATH=$PATH:$CONDA_PREFIX/Library/mingw-w64/bin
PATH=$PATH:$CONDA_PREFIX/Library/usr/bin
PATH=$PATH:$CONDA_PREFIX/Library/bin
PATH=$PATH:$CONDA_PREFIX/Scripts
PATH=$PATH:$HOME/scripts
PATH=$PATH:$HOME/local/bin
PATH=$PATH:/usr/local/bin
PATH=$PATH:/usr/bin
PATH=$PATH:$HOME/bin				    # Local bin repo for custom packages and non-sudo operations
export PATH					    # Export command
#                                                                                                                         #
###########################################################################################################################

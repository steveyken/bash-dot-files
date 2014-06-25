# export PYENV_VIRTUALENVWRAPPER_PREFER_PYVENV="true"
# export PYENV_ROOT="$HOME/.pyenv"
# export PATH="$PYENV_ROOT/bin:$PATH"
# eval "$(pyenv init -)"

export WORKON_HOME=~/.virtualenvs/
source /usr/local/bin/virtualenvwrapper.sh

source ~/.bash/prompt-colours/main.sh
source ~/.bash/prompt-prefixes/main.sh
source ~/.bash/prompt-nodejs/main.sh
source ~/.bash/prompt-virtualenv/main.sh
source ~/.bash/prompt-git/main.sh


set_prompt (){
	export PS1="${txtgrn}\u@\h${txtrst}:\w\n ${txtcyan}$python_venv ${txtylw}$git_branch${txtred}$git_dirty${txtrst} $prefix "
}

# PROMPT_COMMAND="find_git_branch; find_git_dirty; build_node_path; set_prompt;"
PROMPT_COMMAND="find_git_branch; find_git_dirty; find_python_virtualenv; set_prompt;"

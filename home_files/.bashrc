#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# TODO: add useful aliases, make pretty PS1

alias ls='ls --color=auto'
PS1='[\A \W]\$ '


function goodbye_message {
	echo "Exiting from development environment"
	# display last commands from this session, but no more than ten
	echo "If you want to make these changes permanent, use
docker commit -m '' $HOSTNAME local/devenv"
}

trap 'goodbye_message' 0

export EDITOR=nano

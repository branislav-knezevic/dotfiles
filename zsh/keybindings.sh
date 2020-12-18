# up
	function up_widget() {
		BUFFER="cd .."
		zle accept-line
	}
	zle -N up_widget
	bindkey "^o" up_widget

# git
	function git_prepare() {
		if [ -n "$BUFFER" ];
			then
				BUFFER="git add -A && git commit -m \"$BUFFER\" && git push"
		fi

		if [ -z "$BUFFER" ];
			then
				BUFFER="git add -A && git commit -v && git push"
		fi
				
		zle accept-line
	}
	zle -N git_prepare
	bindkey "^g" git_prepare

# Edit and rerun
  # this commented part was in the original source but it doesn't allow edit of the current command but previously working
	# command
	# function edit_and_run() {
	# 	BUFFER="fc"
	# 	zle accept-line
	# }
	# zle -N edit_and_run
	# bindkey "^v" edit_and_run
	autoload edit-command-line
	zle -N edit-command-line
	bindkey "^v" edit-command-line

# Sudo
	function add_sudo() {
		BUFFER="sudo "$BUFFER
		zle end-of-line
	}
	zle -N add_sudo
	bindkey "^s" add_sudo
	
# Home - Navigates to the current root workspace
	function git_root() {
		BUFFER="cd $(git rev-parse --show-toplevel || echo ".")"
		zle accept-line
	}
	zle -N git_root
	bindkey "^h" git_root

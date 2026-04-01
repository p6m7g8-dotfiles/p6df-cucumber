# shellcheck shell=bash
######################################################################
#<
#
# Function: p6df::modules::cucumber::deps()
#
#>
######################################################################
p6df::modules::cucumber::deps() {
  ModuleDeps=(
    p6m7g8-dotfiles/p6df-js
  )
}

######################################################################
#<
#
# Function: p6df::modules::cucumber::vscodes()
#
#>
######################################################################
p6df::modules::cucumber::vscodes() {

  p6df::modules::vscode::extension::install alexkrechik.cucumberautocomplete

  p6_return_void
}

######################################################################
#<
#
# Function: words cucumber $DEBUG = p6df::modules::cucumber::profile::mod()
#
#  Returns:
#	words - cucumber $DEBUG
#
#  Environment:	 DEBUG
#>
######################################################################
p6df::modules::cucumber::profile::mod() {

  p6_return_words 'cucumber' '$DEBUG'
}

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
    p6m7g8-dotfiles/p6common
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

  code --install-extension alexkrechik.cucumberautocomplete

  p6_return_void
}

######################################################################
#<
#
# Function: str str = p6df::modules::cucumber::prompt::line()
#
#  Returns:
#	str - str
#
#  Environment:	 DEBUG
#>
######################################################################
p6df::modules::cucumber::prompt::line() {

  local str

  if ! p6_string_blank "$DEBUG"; then
    str="cucumber:\t  DEBUG=$DEBUG"
  fi


  p6_return_str "$str"
}


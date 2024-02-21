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
# Function: p6df::modules::cucumber::langs()
#
#>
######################################################################
p6df::modules::cucumber::langs() {

  p6_js_npm_global_install "@cucumber/cucumber"

  p6_return_void
}

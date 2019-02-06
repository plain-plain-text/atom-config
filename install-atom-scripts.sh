#!/bin/sh

# This script checks for the presence of Atom packages and installs
# them. It then lightly touches the configurations to ensure autosave
# is enabled.

if type apm > /dev/null; then
  echo "Installing Atom packages. This may take a few minutes."
  for package in busy-signal file-icons platformio-ide-terminal wordcount linter-markdown intentions linter-ui-default linter linter-js-yaml linter-eslint linter-ruby linter-pylint
  do
    apm install $package
  done
else
  echo "Could not find apm. Is Atom installed?"
fi

if ! grep "^\s+autosave:" $HOME/.atom/config.cson; then
  echo "Enabling autosave."
  echo "  autosave:" >> $HOME/.atom/config.cson
  echo "    enabled: true" >> $HOME/.atom/config.cson
fi



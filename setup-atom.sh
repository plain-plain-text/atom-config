#!/bin/sh

# This script checks for the presence of Atom packages and installs
# them. It then lightly touches the configurations to ensure autosave
# is enabled.

# Install packages.
if type apm > /dev/null; then
  echo "Installing Atom packages. This may take a few minutes."
  for package in busy-signal file-icons platformio-ide-terminal wordcount linter-markdown intentions linter-ui-default linter linter-js-yaml linter-eslint linter-ruby linter-pylint
  do
    apm install $package
  done
else
  echo "Could not find apm. Check that you’ve run the “Install Shell Commands” inside the “Atom” menu from within Atom." 
fi

# Enable autosave
if ! grep "^\s+autosave:" $HOME/.atom/config.cson; then
  echo "Enabling autosave."
  echo "  autosave:" >> $HOME/.atom/config.cson
  echo "    enabled: true" >> $HOME/.atom/config.cson
fi



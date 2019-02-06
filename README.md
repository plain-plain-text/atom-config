# atom-config

These (power)shell scripts let the Plain Plain Text community install popular
and useful packages to [Atom](http://atom.io), the hackable text editor. It
also changes the configuration file to enable autosave, which is disabled by
default in Atom.

## Installation and Usage

### MacOS

1. Save [atom-setup.sh](https://raw.githubusercontent.com/plain-plain-text/atom-config/master/setup-atom.sh) as a file to your Desktop.  
1. Open up `Terminal.app` (located in `Applications/Utilities`)
1. In `Terminal.app`, type in: `sh ~/Desktop/setup-atom.sh` and hit “return.”

### Linux

Just like the MacOS instructions, more or less. For now.

### Windows

Instructions to come once a Powershell script is available.

## Packages 

### Usability Packages

* `[file-icons](https://atom.io/packages/file-icons)`: Adds pretty icons
* `[platformio-ide-terminal](https://atom.io/packages/platformio-ide-terminal)`: Creates interactive shells executing scripts within atom.
* `[wordcount](https://atom.io/packages/wordcount)`: Adds a wordcount report

### Linting Packages

[Linter](https://atom.io/packages/linter) is a package that helps find errors
in code or syntax in Atom. You can add additional linter layers above it for
whatever language or markup you are using. We offer a few base linter
languages that the Plain Plain Text community is likely to need.

* `[linter](https://atom.io/packages/linter)`: The base package
* `[busy-signal](https://atom.io/packages/busy-signal)`: A dependency
* `[intentions](https://atom.io/packages/intentions)`: A dependency
* `[linter-ui-default](https://atom.io/packages/linter-ui-default)`: A
dependency


* `[linter-markdown](https://atom.io/packages/linter-markdown)`: [Markdown](https://en.wikipedia.org/wiki/Markdown)
* `[linter-js-yaml](https://atom.io/packages/linter-js-yaml)`: [YAML](https://en.wikipedia.org/wiki/YAML)
* `[linter-eslint](https://atom.io/packages/linter-eslint)`: [ESLint](https://eslint.org/) for JavaScript
* `[linter-ruby](https://atom.io/packages/linter-ruby)`:
[Ruby](https://en.wikipedia.org/wiki/Ruby_(programming_language))
* `[linter-pylint](https://atom.io/packages/linter-pylint)`: [Pylint](https://pylint.org/) for Python

## Configuration

For the time being, our shell scripts only make one configuration change. They
enable autosave, which is disabled by default.

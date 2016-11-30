#!/bin/bash

# First, make sure oh my zsh is installed.
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Now, do the other config stuff
configs/setup_the_rest.sh

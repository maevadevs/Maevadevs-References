#!/bin/bash
# ---- Run this file as ./brew-maintenance from the containing folder to run maintenance on brew ----
brew update #get updatable package
brew upgrade #installs new version of outdated packages
brew cleanup -s #keep only linked versions (by default, the last) 
brew prune #remove old symlinks
# ---- Diagnostics ----
brew doctor #show any problem with brew installations
brew missing #show missing dependencies

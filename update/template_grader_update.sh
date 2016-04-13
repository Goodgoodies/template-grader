#!/bin/sh
# Setup an alias for the update
git config --global alias.templateupdate '!git remote update -p; git merge --ff-only @{u}'
# Echo into a new bash
bash -c "cd ~/.templater && git checkout master && git templateupdate && exit"

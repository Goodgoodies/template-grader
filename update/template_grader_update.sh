#!/bin/sh
# Clear previous alias
git config --global --unset alias.template_update
# Setup an alias for the update
git config --global alias.template_update '!git remote update -p; git merge -ff-only @{u}'
# Echo into a new bash
bash -c "cd ~/.templater && git checkout master && git template_update && exit"

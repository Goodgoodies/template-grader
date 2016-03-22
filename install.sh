#!/bin/sh
comment="# Template Grader Update Export"
output="export PATH=\"\$HOME/.tempalter/update:\$PATH\""
if [ -f ~/.zshrc ]; then
    # if ~/.zshrc is found
    if grep -Fxq "$comment" ~/.zshrc && grep -Fxq "$output" ~/.zshrc
    then
        # Lines found
        echo "Already added to ~/.zshrc";
    else
        echo $comment >> ~/.zshrc
        echo $output >> ~/.zshrc
    fi
fi
if grep -Fxq "$comment" ~/.bashrc && grep -Fxq "$output" ~/.bashrc
    then
        # Lines found
        echo "Already added to ~/.bashrc";
    else
        echo $comment >> ~/.bashrc
        echo $output >> ~/.bashrc
    fi
bash -c "chmod a+x ~/.templater/update/template_update.sh"

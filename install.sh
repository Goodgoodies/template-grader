#!/bin/sh
comment="# Template Grader Export"
output="export PATH=\"\$HOME/.templater/update:\$PATH\""
makedir="export PATH=\"\$HOME/.templater/bin:\$PATH\""
if [ -f ~/.zshrc ]; then
    # if ~/.zshrc is found
    if grep -Fxq "$comment" ~/.zshrc && grep -Fxq "$output" ~/.zshrc && grep -Fxq "$makedir" ~/.zshrc
    then
        # Lines found
        echo "Already added to ~/.zshrc";
    else
        echo $comment >> ~/.zshrc
        echo $output >> ~/.zshrc
        echo $makedir >> ~/.zshrc
    fi
fi
if grep -Fxq "$comment" ~/.bashrc && grep -Fxq "$output" ~/.bashrc && grep -Fxq "$makedir" ~/.bashrc
    then
        # Lines found
        echo "Already added to ~/.bashrc";
    else
        echo $comment >> ~/.bashrc
        echo $output >> ~/.bashrc
        echo $makedir >> ~/.bashrc
    fi
bash -c "chmod a+x ~/.templater/update/template_grader_update.sh"
bash -c "chmod a+x ~/.templater/bin/*.sh"

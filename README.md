# Template Grader
Bash script to make any text file for programming

## Hate creating files?
Yeah me too. Well I thought it would be fun to make some scripts that run files for me. I can choose which files I would like to make, and what they should be called. Keep in mind that they just make some basic files.

## How do I use it?
Quick explanation?  Clone the repo (`git clone https://github.com/srepollock/template-grader ~/.templater`) to the ~/.templater file.  Then set add to your .bashrc or .zshrc (or any other bash you are using) `export PATH="$HOME/.templater/bin:$PATH"`. This will create a reference path to the destination to call the commands from.
That's it? Yes!  Everything should now be ready to run, just call `make_[filetype].sh` and everything should work great! See [Wiki](https://github.com/srepollock/template-grader/wiki) for the file calls.

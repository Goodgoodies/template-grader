# Template Grader
Bash script to make any text file for programming

## Hate creating files?
Yeah me too. Well I thought it would be fun to make some scripts that run files for me. I can choose which files I would like to make, and what they should be called. Keep in mind that they just make some basic files.

## How do I use it?
Quick explanation?  
Clone the repoi

`git clone https://github.com/srepollock/template-grader ~/.templater` 

to the `~/.templater` file.
Now set permissions to your `~/.templater/install.sh` with  

`chmod a+x ~/.templater/install.sh`  

And finally run `~/.tempalter/install.sh`  

`~/.templater/install.sh`  

That's it? Yes!

# Finally
Everything should now be ready to run, just call `make_[filetype].sh` and everything should work great!
> See [Wiki](https://github.com/srepollock/template-grader/wiki) for the file calls.
> Or just run `templater_help.sh` for quick instructions.

## Known Issue
Cannot make a title for the HTML page more than one word.

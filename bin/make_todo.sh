#!/bin/bash

#make_todo - A Script to make a TODO.md document

## Functions

help() {
	(echo "Create a basic TODO.md template"
	echo "Must have an output"
	echo "Usage: > [output file name].cs") 1>&2
}
# Check

USER=$(id -u -n)

cat <<EOF > todo.md
# TODO
This is a TODO list for my git repo

Made with [goodgoodies/template-grader](https://github.com/goodgoodies/template-grader)
EOF

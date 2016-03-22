#!/bin/bash

#make_java - A Script to make a Jaav class documen

## Functions

help() {
	(echo "Create a basic Java template"
	echo "Must have a name, package and an output"
	echo "Usage: [Class Name] [Package name] > [output file name].java") 1>&2
}
# Check

if [ "${1}" == "--help" ]; then 
	help
	exit 0
fi

if [ $# -lt 2 ]; then
	help
	exit 1;
fi

USER=$(id -u -n)
CLASSNAME=${1}
PACKAGE=${2}
TIME=$(date +"%x %r %Z")

cat << _EOF_
package $PACKAGE;

/** 
  * $CLASSNAME class
  *
  * Created by $USER $TIME
  */

public $CLASSNAME {
	public $CLASSNAME() {
		
	}
	public static void main(String[] args){
		// System.out.println("$CLASSNAME has been created.");
	}
}
_EOF_

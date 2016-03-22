#!/bin/bash

#make_cs - A Script to make a C# class document

## Functions

help() {
	(echo "Create a basic C# template"
	echo "Must have a name, namespace(package) and an output"
	echo "Usage: [Class Name] [Namespace name] > [output file name].cs") 1>&2
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
NAMESPACE=${1}
PACKAGE=${2}
TIME=$(date +"%x %r %Z")

cat << _EOF_
package $NAMESPACE;

/** 
  * $CLASSNAME class
  *
  * Created by $USER $TIME
  */
namespace $NAMESPACE {
    $CLASSNAME {
        public $CLASSNAME() {
           // Default constructor 
        }
    }
}
_EOF_

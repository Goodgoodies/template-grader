#!/bin/bash

#make_ci_model - A Script to make a CodeIgniter Model class document

## Functions

help() {
	(echo "Create a CodeIgniter Model tempalte"
	echo "Must have a name, package and an output"
	echo "Usage: [Model Name] > [Model Name].php") 1>&2
}
# Check

if [ "${1}" == "--help" ]; then 
	help
	exit 0
fi

if [ $# -gt 2 ]; then
	help
	exit 1;
fi

CLASSNAME=${1}
TIME=$(date +"%x %r %Z")

cat << _EOF_
<?php

/** 
  * $CLASSNAME Model class
  *
  * Created by $USER $TIME
  */

class $CLASSNAME extends CI_Model {
    
}
_EOF_

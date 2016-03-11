#!/bin/bash

#make_ci_model - A Script to make a CodeIgniter Model class document

## Functions

help() {
	(echo "Create a CodeIgniter Model template"
	echo "Must have a name and an output"
	echo "Usage: [Model Name] > [Model Name].php") 1>&2
}
# Check

if [ "${1}" == "--help" ]; then 
	help
	exit 0
fi

if [ $# -lt 1 ]; then
	help
	exit 1;
fi

USER=$(id -u -n)
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
    function __construct()
    {
        // Call the Model constructor
        parent::__construct();
    }
}
_EOF_

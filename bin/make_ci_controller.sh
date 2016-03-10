#!/bin/bash

#make_ci_controller - A Script to make a CodeIgniter Controller class document

## Functions

help() {
	(echo "Create a CodeIgniter Controller tempalte"
	echo "Must have a name and an output"
	echo "Usage: [Controller Name] > [Controller Name].php") 1>&2
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

USER=$(id -u -n) 
CLASSNAME=${1}
TIME=$(date +"%x %r %Z")

cat << _EOF_
<?php

/** 
  * $CLASSNAME Controller class
  *
  * Created by $USER $TIME
  */

class $CLASSNAME extends CI_Controller {
    function __construct()
    {
        // Call the Model constructor
        parent::__construct();
    }
}
_EOF_

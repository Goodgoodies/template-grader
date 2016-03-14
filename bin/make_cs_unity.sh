#!/bin/bash

#make_cs_unity - A Script to make a Unity C# class document

## Functions

help() {
	(echo "Create a basic Unity C# template"
	echo "Must have a name and an output"
	echo "Usage: [Class Name] > [output file name].cs") 1>&2
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
PACKAGE=${2}
TIME=$(date +"%x %r %Z")

cat << _EOF_
using UnityEngine;
using System.Collections;
/** 
  * $CLASSNAME class
  *
  * Created by $USER $TIME
  */
public $CLASSNAME : MonoBehaviour {
    // Use for initialization
    void Start() {

    }

    // Update is called once per frame
    void Update() {

    }
}
_EOF_

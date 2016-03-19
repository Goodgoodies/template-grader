#!/bin/bash

#templater_help - A Script to help you with the function calls.

cat << _EOF_
-----------
How to use:
-----------
    Example: Making a Java File
    
    make_java.sh HelloWorld src > HelloWorld.java
    
---------------
Function Calls:
---------------
    make_html.sh            | make_java.sh
    make_cs.sh              | make_cs_unity.sh
    make_ci_controller.sh   | make_ci_model.sh

    templater_help.sh - Help file
_EOF_

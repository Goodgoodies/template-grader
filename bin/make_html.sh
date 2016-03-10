#!/bin/bash

#make_page - A Script to make an HTML page

## Functions

help() {
	(echo "Create a basic HTML5 tempalte"
	echo "Must have a name and an output"
	echo "Usage: [Title] > [output file name].html") 1>&2
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

Title=${1}

cat << _EOF_
<!DOCTYPE html>
<head>
	<title>$Title</title>
</head>
<body>
	<center><h1>$Title</h1></center>
	<br />
	<h3>$USER</h3>
	<br />
	<p><i>This is a basic HTML5 template</i></p>
</body>
</html>
_EOF_

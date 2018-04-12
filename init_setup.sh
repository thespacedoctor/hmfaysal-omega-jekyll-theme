#!/bin/bash 
 
display_usage() { 
    echo "Usage:

    ${0##*/}

    -h|--help       show this message"
} 

## DEFAULT OPTIONS & VARIABLES
keep=0 # KEEP ALL BYPRODUCT FILES (USE FOR DEBUGGING)
numberArguments=0 # MINIMUM NUMBER OF COMMAND-LINE ARGUMENTS REQUIRED

# COLLECT CL-ARGUMENTS & PARSE OPTIONS
args=( "$@" )
while [[ $# > 0 ]]
do
key="$1"

case $key in
    -h|--help)
    display_usage
    exit 0
    shift
    ;;
    *)
            # unknown option
    ;;
esac
shift
done

# IF LESS THAN THE REQUIRED ARGUMENTS SUPPLIED, DISPLAY USAGE
if [ ${#args[@]} -lt $numberArguments ] 
then 
    display_usage
    exit 1
fi 

## assign cl-arguments to varibale names
# x-name-cl-argument-variable
mv Gemfile_template Gemfile

echo "Remove extra cruft (_includes _layouts LICENSE.txt README.md ...)? [y|n]:"

read ans

if [[ $ans == "y" ]] 
then
    rm -r _includes _layouts LICENSE.txt README.md
fi

echo "Would you like to edit your _config.yml file now? [y|n]:"

read ans

if [[ $ans == "y" ]] 
then
    open _config.yml
fi

echo "You can now run 

    > bundle install
    > bundle exec jekyll serve
"

echo "Woul you like to delete this setup script? [y|n]:"

read ans

if [[ $ans == "y" ]] 
then
    rm init_setup.sh
fi



#!/bin/sh

usage(){
   echo "Usage: $0 COMMAND" 
   echo ""
   echo "COMMAND:"
   echo "\t build \t build the project"
   echo "\t test  \t test the project"
}

while [[ $# -gt 0 ]] ; do
   case $1 in
      "test")
      echo "testing..."
      echo "test ok"
      ;;
      "build")
      echo "building..."
      echo "build ok"
      ;;
      "help")
      usage
      exit 0 
      ;;
      *)
      usage
      exit 1
      ;;
   esac
   shift
done

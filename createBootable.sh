#!/bin/bash

help()
{
    echo "Usage:createBootable
                |        Required Arguments        |
                [ -p | --path ... File path of ISO ]
                [ -d | --destination ... Destination drive ]
                [ Output: dd bs=4M if=path of=/dev/destination conv=fdatasync status=progress ]
                [ -h | --help ... HELP ]
                [ lsblk | List all available drives, run seperately from script ]
                "
    exit 2
}

SHORT=p:,d:,h
LONG=path:,destination:,help
OPTS=$(getopt -a -n createBootable --options $SHORT --longoptions $LONG -- "$@")

VALID_ARGUMENTS=$# # Returns the count of arguments that are in short or long options

if [ "$VALID_ARGUMENTS" -eq 0 ]; then
  help
fi

eval set -- "$OPTS"

while :
do
  case "$1" in
    -p | --path )
      path="$2"
      shift 2
      ;;
    -d | --destination )
      destination="$2"
      shift 2
      ;;
    -h | --help)
      help
      ;;
    --)
      shift;
      break
      ;;
    *)
      echo "Unexpected option: $1"
      help
      ;;
  esac
done

if [ "$path" ] && [ "$destination" ]
then
    dd bs=4M if=$path of=/dev/$destination conv=fdatasync status=progress
fi

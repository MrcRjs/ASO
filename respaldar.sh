#!/bin/bash

function backupByExt {
  # $1 = extension $2 = searchPaths $3 = backPath
  ext=$1
  sp=$2
  bp=$3
  shopt -s nullglob
  files=( "$sp"/*."$ext" )
  # loop over all the files having the current extension
  for f in "${files[@]}"
  do
    cp "$f" "$bp"
  done
}

if [[ "$#" -ge 3 ]]; then

  # Extract arguments
  backPath="${@: -1}"
  searchPath="${@: -2: 1}"
  numExt=$(($#-2))
  extensions=${@:1:$numExt}

  # Iterate over every extension
  for ext in $extensions
  do
    # if path exists continue backup, else create path
    if [[ -d "$backPath" ]]; then
      backupByExt $ext $searchPath $backPath
    else
      mkdir -p "$backPath"
      backupByExt $ext $searchPath $backPath
    fi
  done
else
  echo 'Usage: [extensions ...] [search path] [backup path]'
  echo 'example: bmp jpg gif ~/images ~/dropbox'
fi
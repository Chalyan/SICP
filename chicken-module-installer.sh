#! /bin/bash

requiredLibs=( "test" "test-generative" )
installedLibs=($(chicken-status | grep '......' | awk '{print $1}'))
missingLibs=()

echo "Checking for required libraries..."

for requiredLib in ${requiredLibs[@]}; do
  libFound=false
  for installedLib in ${installedLibs[@]}; do
    if [[ "$installedLib" == "$requiredLib" ]]; then
      libFound=true
      break
    fi
  done
  if [[ "$libFound" != true ]]; then
    missingLibs+=($requiredLib)
  fi
done

if [[ ${#missingLibs[@]} -gt 0 ]]; then
  echo "Missing libraries: ${missingLibs[@]}"

  if [[ "$1" != "y" ]]; then
    echo "Do you want to install them? (y/n)"
    read answer
    
    if [[ "$answer" != "y" ]]; then
      echo "Please install the missing libraries manually."
      exit 1
    fi
  else
    answer="y"
  fi

  if [[ "$answer" == "y" ]]; then
    OS=$(uname)
    
    if [[ "$OS" == "Darwin" ]] || [[ "$OS" == "Linux" ]]; then
      chicken-install -s ${missingLibs[@]}
    else
      echo "Unsupported OS: $OS"
      exit 1
    fi
  fi
fi

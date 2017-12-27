#!/bin/bash
`sdk version`
if [ $? != 0 ];then
  echo "installing sdkman"
  curl -s "https://get.sdkman.io" | bash

  if [ $? == 0 ]; then
    source "$HOME/.sdkman/bin/sdkman-init.sh"
    sdk version

    if [ $? == 0 ]; then
      sdk install java
    fi
  else
    echo "$?";
    exit $?;
  fi
fi
#
#
#

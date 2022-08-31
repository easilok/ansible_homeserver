#!/bin/bash

if [ "$#" -gt 0 ]; then
  # run with tags
  # the first tag will be duplicated, because the script its easier
  TAGS="$1"
  for TAG in "${@:2}"; do
    TAGS=$TAGS",$TAG"
  done

  ansible-playbook -K --tags $TAGS run.yml

else
  ansible-playbook -K run.yml
fi


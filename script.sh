#!/bin/bash
if [[ $TRAVIS_BRANCH == 'master' ]]
then  
  sed -i '29,30 s/^/#/' .travis.yml
else
  cd spec/dummy
  sed -i '31,33 s/^/#/' .travis.yml
fi

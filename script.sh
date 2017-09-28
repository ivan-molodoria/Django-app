#!/bin/bash
echo $TRAVIS_BRANCH
echo $SHELL
if [ "$TRAVIS_BRANCH" == "master" ]; 
then  
  sed -i '29,30 s/^/#/' .travis.yml
else
    sed -i '31,33 s/^/#/' .travis.yml
fi
cat .travis.yml

#!/bin/sh
echo $TRAVIS_BRANCH
echo $shell
if [ "$TRAVIS_BRANCH" == "master" ]; 
then  
  sed -i '29,30 s/^/#/' .travis.yml
else
    sed -i '31,33 s/^/#/' .travis.yml
fi

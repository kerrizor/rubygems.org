#!/usr/bin/env bash

set -ex

if [ $RUBYGEMS_VERSION == 'latest' ]
then
  exit 0
fi

if [ $TRAVIS_RUBY_VERSION != '2.3.5' ]
then
  exit 0
fi

docker build -t $TRAVIS_COMMIT .

# docker push quay.io/$TRAVIS_REPO_SLUG:$TRAVIS_COMMIT

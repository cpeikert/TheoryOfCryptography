#!/usr/bin/env bash
git config --global user.email "travis@travis-ci.com"
git config --global user.name "Travis CI"
git checkout master
git add -f *.pdf
git commit -m "[skip ci] Automated PDF commit (build: $TRAVIS_BUILD_NUMBER)"
git push --quiet "https://${GH_TOKEN}@github.com/$TRAVIS_REPO_SLUG" "$TRAVIS_BRANCH"

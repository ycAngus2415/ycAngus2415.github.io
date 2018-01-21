#!/bin/bash
bundle exec rake gen_deploy
git add .
git commit -m $1
git push origin source

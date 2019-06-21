#!/usr/bin/env sh

# abort on errors
set -e

# build
npm run build

# navigate into the build output directory
cd dist

# if you are deploying to a custom domain
# echo 'www.example.com' > CNAME

git init
git add -A
git commit -m 'deploy'

# if you are deploying to https://<USERNAME>.github.io
# git push -f git@github.com:haukebri/haukebri.github.io.git master

# if you are deploying to https://haukebri.github.io/vuecamp
git push -f git@github.com:haukebri/vuecamp.git master:gh-pages

cd -
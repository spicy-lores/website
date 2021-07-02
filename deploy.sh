rm -rf node_modules/.cache
$(npm bin)/next build
$(npm bin)/next export
touch out/.nojekyll
git add out/ -f
VERSION=$(egrep -o '"version": "[[:digit:]].[[:digit:]].[[:digit:]]"' package.json |  tr ' ' '\n' | tail -1 | tr '"' ' ');
git commit -m "Deploy to gh-pages. Version ${VERSION}" --no-verify
git subtree push --prefix out origin gh-pages
#!/usr/bin/env bash
set -e

echo "==> Building Dashy..."
yarn build

echo "==> Removing old docs/..."
rm -rf docs

echo "==> Copying fresh build to docs/..."
cp -r dist docs

echo "==> Copying conf.yml into docs/..."
cp user-data/conf.yml docs/conf.yml

echo "==> Copying item-icons into docs/..."
cp -r public/item-icons/* docs/item-icons/

echo "==> Done. Commit and push when ready:"
echo "     git add docs && git commit -m 'Update dashboard' && git push"

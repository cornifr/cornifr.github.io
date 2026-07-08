#!/usr/bin/env bash
set -e

echo "==> Copying conf.yml and icons into dashy-src..."
cp conf.yml dashy-src/user-data/conf.yml
cp -r item-icons/* dashy-src/public/item-icons/

echo "==> Building Dashy..."
pushd dashy-src > /dev/null
yarn build
popd > /dev/null

echo "==> Replacing docs/ with fresh build..."
rm -rf docs
cp -r dashy-src/dist docs

echo "==> Copying conf.yml into docs/..."
cp dashy-src/user-data/conf.yml docs/conf.yml

echo "==> Done. Commit and push when ready:"
echo "     git add docs conf.yml item-icons && git commit -m 'Update dashboard' && git push"

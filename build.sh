#!/usr/bin/env bash
set -e
echo "==> Building Dashy..."
yarn build
echo "==> Done. docs/ is ready for GitHub Pages."
echo "     Edit user-data/conf.yml for config changes."
echo "     Commit and push when ready:"
echo "     git add docs && git commit -m 'Update dashboard' && git push"

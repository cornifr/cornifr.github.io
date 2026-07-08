$ErrorActionPreference = "Stop"
Write-Output "==> Building Dashy..."
yarn build
Write-Output "==> Done. docs/ is ready for GitHub Pages."
Write-Output "     Edit user-data/conf.yml for config changes."
Write-Output "     Commit and push when ready:"
Write-Output "     git add docs && git commit -m 'Update dashboard' && git push"

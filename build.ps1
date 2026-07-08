$ErrorActionPreference = "Stop"
Write-Output "==> Building Dashy..."
yarn build
Write-Output "==> Done. dist/ is ready for GitHub Pages."
Write-Output "     Edit user-data/conf.yml for config changes."
Write-Output "     Commit and push when ready:"
Write-Output "     git add dist && git commit -m 'Update dashboard' && git push"

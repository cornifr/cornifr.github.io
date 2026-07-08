$ErrorActionPreference = "Stop"

Write-Output "==> Building Dashy..."
yarn build

Write-Output "==> Removing old docs/..."
Remove-Item docs -Recurse -Force -ErrorAction SilentlyContinue

Write-Output "==> Copying fresh build to docs/..."
Copy-Item dist docs -Recurse

Write-Output "==> Copying conf.yml into docs/..."
Copy-Item user-data\conf.yml docs\conf.yml -Force

Write-Output "==> Copying item-icons into docs/..."
Copy-Item public\item-icons\* docs\item-icons\ -Recurse -Force -ErrorAction SilentlyContinue

Write-Output "==> Done. Commit and push when ready:"
Write-Output "     git add docs && git commit -m 'Update dashboard' && git push"

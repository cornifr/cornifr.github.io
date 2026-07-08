$ErrorActionPreference = "Stop"

Write-Output "==> Copying conf.yml and icons into dashy-src..."
Copy-Item conf.yml dashy-src\user-data\conf.yml -Force
Copy-Item item-icons\* dashy-src\public\item-icons\ -Recurse -Force

Write-Output "==> Building Dashy..."
Push-Location dashy-src
yarn build
Pop-Location

Write-Output "==> Replacing docs/ with fresh build..."
Remove-Item docs -Recurse -Force -ErrorAction SilentlyContinue
Copy-Item dashy-src\dist docs -Recurse

Write-Output "==> Copying conf.yml into docs/..."
Copy-Item dashy-src\user-data\conf.yml docs\conf.yml -Force

Write-Output "==> Done. Commit and push when ready:"
Write-Output "     git add docs conf.yml item-icons && git commit -m 'Update dashboard' && git push"

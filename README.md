# Cornifr Dashboard

Personal Dashy dashboard deployed at [cornifr.github.io](https://cornifr.github.io) via GitHub Pages (`main` branch, `/docs` folder).

## Files

| File/Dir | Purpose |
|---|---|
| `user-data/conf.yml` | Dashy config — sections, links, theme |
| `public/item-icons/` | Custom section icons |
| `src/` | Patched Dashy source (minimal view, router, App.vue) |
| `docs/` | Built static site served by GitHub Pages |

## How to update

1. Edit `user-data/conf.yml` and/or add icons to `public/item-icons/`
2. Run the build script:
   Windows: `./build.ps1`
   Linux/macOS: `./build.sh`
3. Commit and push:
   ```
   git add docs && git commit -m "Update dashboard" && git push
   ```

## Local preview

```
yarn dev
```

Then open `http://localhost:8080`. Config lives at `user-data/conf.yml`.

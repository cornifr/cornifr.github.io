# Cornifr Dashboard

Personal Dashy dashboard deployed at [cornifr.github.io](https://cornifr.github.io) via GitHub Pages (`main` branch, `/docs` folder).

## Files

| File/Dir | Purpose |
|---|---|
| `user-data/conf.yml` | Dashy config — sections, links, theme |
| `public/item-icons/` | Custom section icons |
| `public/web-icons/` | Custom web icons (logo, favicon) |
| `src/` | Patched Dashy source (minimal view, router, App.vue) |
| `docs/` | Built static site served by GitHub Pages |
| `dashy-src/` | Original unpatched Dashy clone (for reference, gitignored) |

## Source patches

These files differ from upstream Dashy:
- `src/views/Minimal.vue` — logo render in `<h1>`, ref guard on `finishedSearching()`
- `src/router.js` — `/` route maps to `Minimal.vue`, no redirect
- `src/App.vue` — hide `<Header>` on landing route
- `src/components/MinimalView/MinimalSearch.vue` — `clearMinFilterInput()` proxy method

## How to update

1. Edit `user-data/conf.yml` and/or add icons to `public/item-icons/`
2. Build:
   Windows: `./build.ps1`
   Linux/macOS: `./build.sh`
3. Commit and push:
   ```
   git add docs && git commit -m "Update dashboard" && git push
   ```

## Local preview

```
yarn install   # first time only
yarn dev
```

Then open `http://localhost:8080`.

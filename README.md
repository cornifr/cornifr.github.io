# CorniFR Dashboard

Personal Dashy dashboard deployed at [cornifr.github.io](https://cornifr.github.io) via GitHub Pages (`main` branch, `/docs` folder).

## Files

| File/Dir | Purpose |
|----------|---------|
| `conf.yml` | Dashy config — sections, links, theme |
| `item-icons/` | Custom local icons referenced in `conf.yml` |
| `docs/` | Built static site served by GitHub Pages |

## How to update

1. Edit `conf.yml` and/or add icons to `item-icons/`
2. Copy config and icons into the Dashy source:
   ```
   copy conf.yml dashy-src\user-data\conf.yml /Y
   xcopy /e /y item-icons dashy-src\public\item-icons\
   ```
3. Rebuild Dashy:
   ```
   cd dashy-src && yarn build && cd ..
   ```
4. Replace the `docs/` folder with the fresh build:
   ```
   rmdir /s /q docs && xcopy /e /i /y dashy-src\dist docs
   ```
5. Commit and push:
   ```
   git add docs && git commit -m "Update dashboard" && git push
   ```

## Initial setup (already done)

```
git clone --depth 1 https://github.com/Lissy93/dashy.git dashy-src
cd dashy-src && yarn install && cd ..
```

## Local preview

```
cd dashy-src && yarn dev
```

Then open `http://localhost:8080`. Config lives at `dashy-src/user-data/conf.yml`.

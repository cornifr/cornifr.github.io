# CorniFR Dashboard

Personal Dashy dashboard deployed at [cornifr.github.io](https://cornifr.github.io) via GitHub Pages (`main` branch, `/docs` folder).

## Files

| File/Dir | Purpose |
|---|---|
| `conf.yml` | Source config — sections, links, theme, etc. |
| `item-icons/` | Custom local icons for section tiles |
| `docs/` | Built static site served by GitHub Pages |

## How to update

1. Edit `conf.yml` directly (source of truth)
2. Copy into dashy source:
   ```
   Copy-Item conf.yml dashy-src\user-data\conf.yml
   ```
3. Rebuild Dashy:
   ```
   cd dashy-src && yarn build && cd ..
   ```
4. Replace `docs/` with fresh build:
   ```
   Remove-Item docs -Recurse -Force
   Copy-Item dashy-src\dist docs -Recurse
   ```
5. Commit and push

## Initial setup (already done)

```
git clone --depth 1 https://github.com/Lissy93/dashy.git dashy-src
cd dashy-src && yarn install && cd ..
```

After clone, apply the minimal-view logo patch. Open `dashy-src/src/views/Minimal.vue`, find the `<h1>` inside `.title-and-search` and add the logo `<img>` tag before `{{ pageInfo.title }}`:

```html
<h1>
  <img v-if="pageInfo.logo" :src="pageInfo.logo" class="page-logo" alt="" />
  {{ pageInfo.title }}
</h1>
```

Then add the CSS below the `h1` block in the `<style>` section:

```css
.page-logo {
  width: 5rem;
  height: 5rem;
  object-fit: contain;
}
```

Also add `display: flex; align-items: center; justify-content: center; gap: 0.5rem;` to the `h1` rule.

## Local preview

```
cd dashy-src && yarn dev
```

Then open `http://localhost:8080`. Config lives at `dashy-src/user-data/conf.yml`.

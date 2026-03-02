# Lo De Victor - Parrilla Kosher

Static HTML/CSS/JS site. Tri-lingual (ES/EN/HE). Hosted on Hostinger.

## Critical Rules

- **Every content change must update all 3 files**: `index.html`, `en/index.html`, `he/index.html`
- **Plus** translation keys in `js/main.js` for all 3 languages (es, en, he)
- Translation system uses `element.textContent` - NO HTML in translation values
- Version bump: `sitebump.sh` only bumps root `index.html`. After it runs, manually match the version in `en/index.html` and `he/index.html`

## Deploy

```bash
bash deploytohostinger.sh   # production (Hostinger)
bash gitpush.sh              # git push (GitHub)
```

## Gotchas

- `gsc-service-account.json` is gitignored - never commit it
- Vacation banner template saved in `vacation-banner-template.html` for reuse
- See `PROJECT.md` for full structure, design, and analytics details

# Lo De Victor - Parrilla Kosher

## Site Info

- **URL**: https://lodevictor.com
- **Type**: Static HTML/CSS/JS (no framework)
- **Hosting**: Hostinger (via `deploytohostinger.sh`)
- **Languages**: Spanish (default), English (`/en/`), Hebrew (`/he/`)
- **Version**: tracked in footer `<span class="version">` across all 3 index.html files

## Structure

```
index.html          # Spanish homepage (default)
en/index.html       # English
he/index.html       # Hebrew (RTL)
css/styles.css      # Single stylesheet
js/main.js          # Translations + all JS logic
images/             # Numbered images (.png + .webp pairs)
sitemap.xml
robots.txt
favicon.svg
```

## Translation System

- All translatable text uses `data-translate="key"` attributes in HTML
- Translations object in `js/main.js` with keys for `es`, `en`, `he`
- `setLanguage()` uses `element.textContent` (no HTML in translation values)
- Language preference saved in `localStorage` as `preferredLanguage`

## Tri-lingual Changes

Any content change must be applied to all 3 files:
- `index.html` (Spanish)
- `en/index.html` (English)
- `he/index.html` (Hebrew)

Plus translation keys in `js/main.js` for all 3 languages.

## Sections (in order)

1. Navbar (fixed, z-index 999)
2. Hero (`#inicio`)
3. Hours - business hours table + Delivery/Pickup/Reservas cards
4. About (`#about`) - features + kosher certification
5. Menu (`#menu`) - Parrilla + Pollo + Guarniciones
6. Gallery (`#gallery`) - numbered food photos
7. FAQ (`#faq`) - expandable Q&A
8. Contact (`#contact`) - address, phones, social, Google Maps embed
9. Footer - version number, Pensanta credit

## Design

- **Colors**: `--primary-red: #f90703`, black backgrounds, white/gray text
- **Fonts**: Playfair Display (headers), Raleway (body)
- **Layout**: CSS Grid (2-col for hours, contact) + Flexbox
- **Mobile**: responsive via media queries

## Temporary Content

- **Vacation banner** (red, top of page) + vacation notices in Hours and Contact sections
- Remove after Feb 20, 2026 — search for `vacation` in all files

## Deploy

```bash
bash deploytohostinger.sh
```

Or for git push (Vercel not used here):
```bash
bash gitpush.sh
```

## Bump Version

Update `<span class="version">vXX</span>` in all 3 index.html files.

## GSC Service Account

`gsc-service-account.json` (gitignored) — Google Search Console API credentials for the service account `search-console-api@calensa.iam.gserviceaccount.com`. Used by `tools/gsc_report_generator.py` and `tools/gsc-submit-sitemap.py` to generate reports and submit sitemaps without browser-based OAuth. Master copy lives in the `websites/` root.

## Analytics

- GTM: `GTM-KXCDKD35`
- GA4: `G-85LF5YZBVF`
- Google Ads: `AW-725482879`

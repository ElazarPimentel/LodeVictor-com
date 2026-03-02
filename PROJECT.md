# Lo De Victor - Parrilla Kosher

- **URL**: https://lodevictor.com
- **Type**: Static HTML/CSS/JS (no framework)
- **Hosting**: Hostinger (via `deploytohostinger.sh`)
- **Languages**: Spanish (default), English (`/en/`), Hebrew (`/he/`)

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
- `setLanguage()` applies translations via `element.textContent`
- Language preference saved in `localStorage` as `preferredLanguage`

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

## Analytics

- GTM: `GTM-KXCDKD35`
- GA4: `G-85LF5YZBVF`
- Google Ads: `AW-725482879`

## GSC Service Account

`gsc-service-account.json` (gitignored) - Google Search Console API credentials for `search-console-api@calensa.iam.gserviceaccount.com`. Master copy lives in the `websites/` root.

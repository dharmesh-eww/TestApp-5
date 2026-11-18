# AstroDaily

Android-first, light-only zodiac and horoscope companion for entertainment and self-reflection.

## Architecture

The application uses separate app composition, feature screens, shared widgets, core models, local repositories and platform services. This follows the feature-oriented organization used in TestApp-3 and keeps app startup separate from screen implementations.

```text
lib/
  app/                 app composition and navigation
  core/data/           SQLite and repositories
  core/models/         zodiac, horoscope and lunar models
  core/services/       content, backups, reminders and sharing
  core/theme/          light-only Celestial Daylight tokens
  features/            onboarding, today, zodiac, readings, archive,
                       compatibility, lunar, learning, journal, saved,
                       search, settings and share-card screens
  shared/widgets/      reusable app components
```

## Implemented

- First-launch onboarding with manual sun-sign selection and optional month/day helper; cusp dates remain manually overridable.
- Today screen with dated daily reading, categories, sign selector, save/share and journal prompt.
- Twelve zodiac profiles and a non-scored compatibility explorer.
- Learning library and cached archive / weekly-monthly reading views.
- Private local journal with edit, delete, search, tags and optional mood.
- On-device share-card preview and image sharing; journal text is excluded.
- SQLite local persistence with a v1-to-v2 migration.
- Public manifest refresh with same-host paths, file-size bounds, SHA-256 checks, schema validation and transactional cache activation.
- Lunar event provenance validation and device-local event display; no approximate client-side moon calculations.
- Optional local daily notification with device timezone resolution.
- Versioned JSON backup export and validated import with merge/replace preview.
- Fixed light appearance; no login, backend, Firebase or cloud sync.

## Content publishing contract

Configure a public manifest URL in Settings. Every manifest file entry must provide `path`, `size_bytes` and a real 64-character SHA-256 digest. Daily packs must use schema version 1 and contain published readings for all twelve signs. Lunar packs must include UTC timestamps, source name, source timezone, dataset version, verification date and source URL. Placeholder hashes are rejected.

## Run and validate

```sh
flutter pub get
flutter analyze
flutter test
flutter build apk --release
```

## Release gates still required

- Publish reviewed weekly/monthly and historical packs; only daily general content is bundled.
- Complete weekly, lunar, weekday and quiet-hours reminder scheduling, including rescheduling after reboot and timezone changes.
- Add configurable category preferences, optional non-punitive streaks and weekly reflection recap.
- Expand sourced learning articles and add content correction/contact information.
- Add ETag/304 handling, archive retention policy and a verified cache rollback recovery path.
- Test backup restore rollback, database migration and Android notification permission behavior on CI.
- Complete privacy policy, terms, attribution and Play Store data-safety declarations before release.

Astrology content is not scientific prediction or professional advice. Ads are intentionally not enabled.

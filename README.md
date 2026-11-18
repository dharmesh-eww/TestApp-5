# AstroDaily
Light-only, Android-first zodiac and horoscope companion for entertainment and self-reflection.

## Principles
- No account, custom backend, Firebase, remote database or cloud sync.
- Selected sign, favorites and journal are stored locally in SQLite.
- Public editorial JSON is read-only; personal data is never sent to content hosts.
- Western tropical sun-sign content only; no natal charts, ascendant, houses or live transit engine.
- Astrology is not factual prediction or professional advice.

## Implemented foundation
Today dashboard and bundled dated daily pack; all 12 sign profiles; category/period availability states; local favorites and private journal; reflective compatibility without scores; learning library; lunar provenance placeholder; manual public JSON refresh with GET-only, 512 KB limit and schema-version validation; local data deletion.

## Run
```sh
flutter pub get
flutter run
flutter test
```

## Production follow-ups
Publish reviewed weekly/monthly/archive and category content. Add lunar dates only with verified source/timezone metadata. Complete import/export preview and rollback, local notification scheduling, share-card studio, privacy policy and content correction contact before release. Ads are intentionally not enabled.

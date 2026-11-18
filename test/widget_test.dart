import 'package:flutter_test/flutter_test.dart';
import 'package:astrodaily/core/models/zodiac_sign.dart';

void main() {
  test('AstroDaily contains all twelve Western zodiac signs', () {
    expect(zodiacSigns.length, 12);
    expect(zodiacById.keys.toSet(), {
      'aries','taurus','gemini','cancer','leo','virgo',
      'libra','scorpio','sagittarius','capricorn','aquarius','pisces',
    });
  });
  test('Every sign exposes traditional profile metadata', () {
    for (final sign in zodiacSigns) {
      expect(sign.name, isNotEmpty);
      expect(sign.glyph, isNotEmpty);
      expect(sign.element, isNotEmpty);
      expect(sign.modality, isNotEmpty);
      expect(sign.ruler, isNotEmpty);
    }
  });
  test('Zodiac IDs are unique', () {
    expect(zodiacSigns.map((s) => s.id).toSet().length, 12);
  });
}

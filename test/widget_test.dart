import 'package:flutter_test/flutter_test.dart';
import 'package:astrodaily/main.dart';

void main() {
  test('AstroDaily contains all twelve Western zodiac signs', () {
    expect(signs.length, 12);
    expect(signMap.keys.toSet(), {
      'aries','taurus','gemini','cancer','leo','virgo',
      'libra','scorpio','sagittarius','capricorn','aquarius','pisces',
    });
  });

  test('Each zodiac sign has a readable name and traditional metadata', () {
    for (final sign in signs) {
      expect(sign.name, isNotEmpty);
      expect(sign.glyph, isNotEmpty);
      expect(sign.element, isNotEmpty);
      expect(sign.mode, isNotEmpty);
    }
  });
}

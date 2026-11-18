import 'package:flutter_test/flutter_test.dart';
import 'package:astrodaily/core/models/reading.dart';

void main() {
  test('reading model preserves explicit date coverage', () {
    final reading = HoroscopeReading.fromJson({
      'id': 'weekly-aries-general',
      'sign_id': 'aries',
      'period_type': 'weekly',
      'period_start': '2026-11-16',
      'period_end': '2026-11-22',
      'category': 'general',
      'title': 'A steady week',
      'body': 'Make room for a manageable next step.',
      'prompt': 'What can you simplify?',
      'status': 'published',
    });
    expect(reading.periodType, 'weekly');
    expect(reading.periodStart, '2026-11-16');
    expect(reading.periodEnd, '2026-11-22');
    expect(reading.signId, 'aries');
  });
}

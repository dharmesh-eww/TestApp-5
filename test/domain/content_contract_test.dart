import 'package:flutter_test/flutter_test.dart';
import 'package:astrodaily/core/services/static_content_service.dart';

void main() {
  test('remote content is restricted to public raw GitHub URLs', () async {
    final service = StaticContentService();
    await expectLater(
      service.checkAndUpdate(Uri.parse('https://example.com/manifest.json')),
      throwsA(isA<FormatException>()),
    );
    service.close();
  });
}

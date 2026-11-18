import 'package:timezone/data/latest.dart' as tzdata;
import 'package:timezone/timezone.dart' as tz;

/// Horoscope dates follow the documented US editorial calendar, not UTC midnight
/// and not the device timezone.
class AstroClock {
  static DateTime editorialToday() {
    tzdata.initializeTimeZones();
    final location = tz.getLocation('America/New_York');
    final now = tz.TZDateTime.now(location);
    return DateTime(now.year, now.month, now.day);
  }
}

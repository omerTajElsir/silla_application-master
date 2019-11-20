import 'package:meta/meta.dart';

class UtcToLocale {
  static DateTime convert({@required DateTime utcDate}) {
    return DateTime.utc(utcDate.year, utcDate.month, utcDate.day, utcDate.hour,
            utcDate.minute, utcDate.second, utcDate.millisecond)
        .toLocal();
  }
}

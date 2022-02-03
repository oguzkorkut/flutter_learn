import 'package:flutter_learn1/work2/core/exceptions/duration_exception.dart';

enum DurationEnums { LOW, HIGH, NORMAL }

extension DurationEnumsExtension on DurationEnums {
  Duration get time {
    switch (this) {
      case DurationEnums.HIGH:
        return Duration(seconds: 10);
      // break;

      case DurationEnums.NORMAL:
        return Duration(seconds: 5);
      // break;

      case DurationEnums.LOW:
        return Duration(seconds: 2);
      // break;
      default:
      throw DurationException(this);
      // throw Exception('Not found enum value $this');
    }
  }
}

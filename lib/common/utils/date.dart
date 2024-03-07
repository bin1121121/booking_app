import 'package:intl/intl.dart';

String timeLineFormat(DateTime dt) {
  var now = DateTime.now();
  var different = now.difference(dt);

  if (different.inMinutes < 60) {
    return '${different.inMinutes} m ago';
  }
  if (different.inHours < 24) {
    return '${different.inHours} h ago';
  }
  if (different.inDays < 30) {
    return '${different.inDays} d ago';
  } else if (different.inDays < 365) {
    final dtFormat = DateFormat('MM-dd');
    return dtFormat.format(dt);
  } else {
    final dtFormat = DateFormat('yyyy-MM-dd');
    return dtFormat.format(dt);
  }
}

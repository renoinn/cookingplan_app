import 'package:intl/date_symbol_data_local.dart';
import "package:intl/intl.dart";

extension DateTimeUtil on DateTime {
  String get toFormattedString {
    initializeDateFormatting('ja_JP');
    var formatter = DateFormat('yyyy年MM月dd日 HH:mm', 'ja_JP');
    return formatter.format(this);
  }

  String get fromNow {
    var now = DateTime.now();
    var duration = now.difference(this);
    if (duration.inMinutes < 1) {
      return 'たった今';
    } else if (duration.inHours < 1) {
      return duration.inMinutes.toString() + '分前';
    } else if (duration.inDays < 1) {
      return duration.inHours.toString() + '時間前';
    } else if (duration.inDays < 7) {
      return duration.inDays.toString() + '日前';
    }
    var formatter = DateFormat('yyyy年MM月dd日 HH:mm', 'ja_JP');
    return formatter.format(this);
  }
}

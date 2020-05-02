import 'package:intl/date_symbol_data_local.dart';
import "package:intl/intl.dart";

String dateTimeToString(dynamic dateTime, {bool formNow = true}) {
  initializeDateFormatting("ja_JP");

  if (dateTime is String) {
    dateTime = DateTime.parse(dateTime).toLocal();
  }
  DateTime now = DateTime.now();
  Duration duration = now.difference(dateTime);

  String formatted;
  if (!formNow) {
    DateFormat formatter = DateFormat("yyyy年MM月dd日 HH:mm", "ja_JP");
    return formatter.format(dateTime);
  }

  if (duration.inMinutes < 1) {
    formatted = "たった今";
  } else if (duration.inHours < 1) {
    formatted = duration.inMinutes.toString() + "分前";
  } else if (duration.inDays < 1) {
    formatted = duration.inHours.toString() + "時間前";
  } else if (duration.inDays < 7) {
    formatted = duration.inDays.toString() + "日前";
  } else {
    DateFormat formatter = DateFormat("yyyy年MM月dd日 HH:mm", "ja_JP");
    formatted = formatter.format(dateTime);
  }

  return formatted;
}
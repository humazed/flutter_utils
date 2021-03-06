import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

String serverTimeFormat(TimeOfDay time) {
  if (time == null) return null;

  var hour = time.hour < 10 ? '0${time.hour}' : time.hour;
  var minute = time.minute < 10 ? '0${time.minute}' : time.minute;

  return '$hour:$minute';
}

final serverFormatter = DateFormat('yyyy-MM-dd');

String serverDateFormat(DateTime date) {
  if (date == null) return null;

  return serverFormatter.format(date);
}

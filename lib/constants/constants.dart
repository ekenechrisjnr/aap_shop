import 'dart:io';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

// APP CONSTANT NAMES

const String mobileName = "A U S T I N  &  P H I L L I P S";
const String webDesktopName = "Austin & Phillips";
const String appName = "A U S T I N  &  P H I L L I P S";

// NAIRA SYMBOL

NumberFormat currency(context) {
  // ignore: unused_local_variable
  Locale locale = Localizations.localeOf(context);
  var format =
      NumberFormat.simpleCurrency(locale: Platform.localeName, name: 'USD');
  return format;
  // ("Currency Symbol ${format.currencySymbol}");
  // ("Currency Name ${format.currencyName}");
}

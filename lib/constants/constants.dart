import 'dart:io';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

// APP CONSTANT NAMES

const String mobileName = "A u s t i n  &  P h i l l i p s";
const String webDesktopName = "Austin & Phillips";
const String appName = "A U S T I N  &  P H I L L I P S";

// APP COLORS

const Color whiteColor = Colors.white;
Color lightBlackColor = Colors.black.withOpacity(.4);
const Color myRed = Color.fromARGB(255, 214, 29, 29);

// NAIRA SYMBOL

NumberFormat currency(context) {
  // ignore: unused_local_variable
  Locale locale = Localizations.localeOf(context);
  var format = NumberFormat.simpleCurrency(
    locale: locale.toString(),
    name: 'USD',
  );
  return format;
  // ("Currency Symbol ${format.currencySymbol}");
  // ("Currency Name ${format.currencyName}");
}

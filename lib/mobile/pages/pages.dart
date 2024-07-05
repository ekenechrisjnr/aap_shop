import 'package:aap_shop/mobile/mobile_body.dart';
import 'package:flutter/material.dart';

import 'favourites.dart';
import 'settings.dart';
import '../../mobile/activities/home.dart';
import '../../homepage.dart';
import '../../mobile/pages/shoplist.dart';

const List<Widget> pages = <Widget>[
  Home(),
  ShopList(),
  Favourites(),
  Settings(),
];

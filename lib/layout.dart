import 'package:flutter/material.dart';
import 'package:flutter_application_1/ios.dart';
import 'package:flutter_application_1/tab.dart';
import 'package:flutter_application_1/web.dart';

class layout1 extends StatelessWidget {
  final Widget ios;
  final Widget tab;
  final Widget web;

  const layout1(
      {super.key, required this.ios, required this.tab, required this.web});
  static bool isios(BuildContext context) =>
      MediaQuery.of(context).size.width < 541;
  static bool istab(BuildContext context) =>
      // MediaQuery.of(context).size.width < 960 &&
      MediaQuery.of(context).size.width >= 541 &&
      MediaQuery.of(context).size.width <= 960;

  static bool isweb(BuildContext context) =>
      MediaQuery.of(context).size.width > 960;
  @override
  Widget build(BuildContext context) {
    if (isios(context)) {
      return ios1();
    } else if (istab(context)) {
      return tab1();
    } else {
      return itachu();
    }
  }
}

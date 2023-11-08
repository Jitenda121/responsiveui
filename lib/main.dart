import 'package:flutter/material.dart';
import 'package:flutter_application_1/layout.dart';
import 'package:flutter_application_1/tab.dart';
import 'web.dart';
import 'ios.dart';

void main() {
  runApp(const itachi());
}

// ignore: camel_case_types
class itachi extends StatefulWidget {
  const itachi({super.key});

  @override
  State<itachi> createState() => _itachiState();
}

// ignore: camel_case_types
class _itachiState extends State<itachi> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: layout1(
          web: const itachu(),
          tab: const tab1(),
          ios: ios1(),
        ));
  }
}

import 'package:flutter/material.dart';
import 'package:yoga_mate/home.dart';

import 'detail.dart';

void main() {
  runApp(const YogaMateApp());
}

class YogaMateApp extends StatelessWidget {
  const YogaMateApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_test_widgets/options_menu.dart';
import 'package:flutter_test_widgets/visible_widget.dart';

void main() {
  runApp(
      my_app());}

class my_app extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: option_menu(),
    );
  }
}

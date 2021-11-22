import 'package:flutter/material.dart';

class SafeAreaExample extends StatefulWidget {
  SafeAreaExample({Key? key}) : super(key: key);

  @override
  _SafeAreaExampleState get createState => _SafeAreaExampleState();
}

class _SafeAreaExampleState extends State<SafeAreaExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Text('Привет мир, я заебался.'),
    ));
  }
}

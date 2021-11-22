import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ExpandedExemple extends StatefulWidget {
  ExpandedExemple({Key? key}) : super(key: key);

  @override
  _ExpandedExampleState get createState => _ExpandedExampleState();
}

class _ExpandedExampleState extends State<ExpandedExemple> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Container(
              color: Colors.green,
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.red,
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.blue,
            ),
          ),
        ],
      ),
    );
  }
}

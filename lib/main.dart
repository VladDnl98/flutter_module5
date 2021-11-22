import 'package:flutter/material.dart';
import 'package:flutter_module5/column_row_example.dart';
import 'package:flutter_module5/expanded_exampale.dart';
import 'package:flutter_module5/safe_area_example.dart';
import 'package:flutter_module5/expanded_exampale.dart';
import 'package:flutter_module5/align_example.dart';
import 'package:flutter_module5/align_example.dart';
import 'package:flutter_module5/scaffold_example.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //home: SafeAreaExample(),
      //home: ExpandedExemple(),
      //home: AlignExample(),
      //home: ColumnRowExample(),
      home: ScaffoldExample(),
    );
  }
}

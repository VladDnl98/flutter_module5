// ignore_for_file: unused_import, duplicate_import

import 'package:flutter/material.dart';
import 'package:flutter_module5/column_row_example.dart';
import 'package:flutter_module5/cupertino_example.dart';
import 'package:flutter_module5/cupertino_tab_example.dart';
import 'package:flutter_module5/expanded_exampale.dart';
import 'package:flutter_module5/safe_area_example.dart';
import 'package:flutter_module5/expanded_exampale.dart';
import 'package:flutter_module5/align_example.dart';
import 'package:flutter_module5/align_example.dart';
import 'package:flutter_module5/scaffold_example.dart';
import 'package:flutter_module5/bottom_navigation_bar.dart';
import 'package:flutter_module5/cupertino_example.dart';
import 'package:flutter_module5/cupertino_tab_example.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return MaterialApp(
      //home: SafeAreaExample(),
      //home: ExpandedExemple(),
      //home: AlignExample(),
      //home: ColumnRowExample(),
      // home: BottomNavigationBarExample(),
      // home: CupertinoExample(),
      // home: ScaffoldExample(),
      home: const CupertinoTabEample(),
    );
  }
}

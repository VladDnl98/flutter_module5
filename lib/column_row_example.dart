import 'package:flutter/material.dart';

class ColumnRowExample extends StatefulWidget {
  ColumnRowExample({Key? key}) : super(key: key);

  @override
  _ColumnRowExampleState get createState => _ColumnRowExampleState();
}

class _ColumnRowExampleState extends State<ColumnRowExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 100,
              height: 100,
              color: Colors.orange,
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.black,
            ),
            // Container(
            //   width: 100,
            //   height: 100,
            //   color: Colors.black,
            // ),
            Row(
              children: [
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.white10,
                  child: Center(
                    child: Image.network(
                        'https://upload.wikimedia.org/wikipedia/commons/thumb/3/36/MetaMask_Fox.svg/1200px-MetaMask_Fox.svg.png'),
                  ),
                ),
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.brown[600],
                ),
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.grey,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

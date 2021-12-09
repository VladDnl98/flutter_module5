import 'dart:ui';
import 'package:flutter/cupertino.dart';

class CupertinoExample extends StatefulWidget {
  const CupertinoExample({Key? key}) : super(key: key);

  @override
  _CupertinoExampleState get createState => _CupertinoExampleState();
}

class _CupertinoExampleState extends State<CupertinoExample> {
  void _showModalPopup(String title) {
    showCupertinoModalPopup(
        context: context,
        builder: (context) => Container(
              height: 240,
              color: CupertinoColors.white,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      title,
                      style:
                          const TextStyle(color: CupertinoColors.activeGreen),
                    ),
                    const SizedBox(height: 12),
                    const Text("Bezlimit prime status")
                  ],
                ),
              ),
            ),
        filter: ImageFilter.blur(sigmaX: 2, sigmaY: 1));
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        // ignore: unnecessary_const
        trailing: const Icon(CupertinoIcons.info),
        leading: Text("Leading"),
        middle: Text("Middle"),
      ),
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              const Text("Test master"),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  CupertinoButton(
                    child: const Text("Button"),
                    onPressed: () {
                      _showModalPopup('Button');
                    },
                  ),
                  const SizedBox(height: 24),
                  CupertinoButton.filled(
                    child: const Text("Filled"),
                    onPressed: () {
                      _showModalPopup('Filled Button');
                    },
                  ),
                  const SizedBox(height: 24),
                  const CupertinoTextField(
                    placeholder: 'заполните поле email',
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

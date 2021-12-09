// ignore_for_file: avoid_print, dead_code

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Nav {
  final String title;
  final IconData icon;

  Nav({required this.icon, required this.title});
}

final tabBar = [
  Nav(title: 'Home', icon: CupertinoIcons.home),
  Nav(title: 'Files', icon: CupertinoIcons.folder),
  Nav(title: 'Emails', icon: CupertinoIcons.mail),
];

class CupertinoTabEample extends StatefulWidget {
  const CupertinoTabEample({Key? key}) : super(key: key);

  @override
  _CupertinoTabExampleState get createState => _CupertinoTabExampleState();
}

class _CupertinoTabExampleState extends State<CupertinoTabEample> {
  final CupertinoTabController controller = CupertinoTabController();

  @override
  void initState() {
    super.initState();
    controller.addListener(() {
      print(controller.index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      controller: controller,
      tabBuilder: (BuildContext context, int index) {
        return CupertinoTabView(
          builder: (BuildContext context) {
            print(index);
            switch (index) {
              case 0:
                return const HomeView();
                break;
              case 1:
                return FilesView(
                  controller: controller,
                );
                break;
              case 2:
                return const EmailsView();
                break;
              default:
                return const HomeView();
            }
          },
        );
      },
      tabBar: CupertinoTabBar(
        items: [
          for (final item in tabBar)
            BottomNavigationBarItem(
              label: item.title,
              icon: Icon(item.icon),
            )
        ],
      ),
    );
  }
}

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text('Home nav bar'),
      ),
      child: Center(
        child: Text('Home'),
      ),
    );
  }
}

class FilesView extends StatelessWidget {
  const FilesView({Key? key, required this.controller}) : super(key: key);
  final CupertinoTabController controller;

  @override
  Widget build(BuildContext context) {
    return const CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text('Files nav bar'),
      ),
      child: SafeArea(
        child: Center(
            // ignore: unnecessary_const
            // child: Column(
            //   mainAxisSize: MainAxisSize.min,
            //   children: [
            //     Text('Files'),
            //     SizedBox(height: 12),
            //     CupertinoButton.filled(
            //       onPressed: () {
            //         controller.index = 2;
            //       },
            //       child: Text('Go to Emails tab'),
            //     ),
            //   ],
            // ),
            ),
      ),
    );
  }
}

class EmailsView extends StatelessWidget {
  const EmailsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text('Emails nav bar'),
      ),
      child: Center(
        child: Text('Emails'),
      ),
    );
  }
}

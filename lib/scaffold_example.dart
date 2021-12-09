import 'package:flutter/material.dart';

class ScaffoldExample extends StatefulWidget {
  const ScaffoldExample({Key? key}) : super(key: key);

  @override
  _ScaffoldExampleState get createState => _ScaffoldExampleState();
}

class _ScaffoldExampleState extends State<ScaffoldExample> {
  int tabIndex = 0;
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  PersistentBottomSheetController? _controller;

  void openDrawer() {
    scaffoldKey.currentState?.openDrawer();
  }

  void toggleBottomSheet() {
    if (_controller == null) {
      _controller = scaffoldKey.currentState?.showBottomSheet(
        (context) => Container(
          color: Colors.deepOrange,
          height: 200,
          child: Center(
            child: TextButton(
              onPressed: openDrawer,
              child: const Text('Open Drawer'),
            ),
          ),
        ),
      );
    } else {
      _controller?.close();
      _controller = null;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,

      appBar: AppBar(
        title: const Text('App Bar Title'),
        actions: [
          Builder(
            builder: (context) => IconButton(
              icon: const Icon(Icons.person),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            ),
          ),
          // IconButton(
          //   icon: const Icon(Icons.add),
          //   onPressed: () {},
          // )
        ],
      ),
      drawer: Drawer(
        child: Column(
          children: [
            const DrawerHeader(
              child: CircleAvatar(
                radius: 60,
                backgroundColor: Colors.green,
                backgroundImage: NetworkImage(
                    'https://img.artlebedev.ru/everything/bezlimit/identity/morda/bezlimit-identity-1200.jpg'),
              ),
            ),
            const ListTile(
              title: Text('Главная'),
              leading: Icon(Icons.home),
              trailing: Icon(Icons.arrow_forward),
            ),
            ListTile(
              title: const Text('Брони'),
              leading: const Icon(Icons.home),
              trailing: const Icon(Icons.arrow_forward),
              onTap: () {
                // ignore: avoid_print
                print('TAP');
              },
              onLongPress: () {
                // ignore: avoid_print
                print('LONG PRESS');
              },
            ),
          ],
        ),
      ),
      // endDrawer: Drawer(
      //   child: Center(
      //     child: Text('End Drawer'),
      //   ),
      // ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextButton(
              onPressed: openDrawer,
              child: const Text('Open Drawer'),
            ),
          ],
        ),
      ),

      // bottomNavigationBar: BottomAppBar(
      //   shape: CircularNotchedRectangle(),
      //   elevation: 10,
      //   notchMargin: 8,
      //   clipBehavior: Clip.antiAlias,
      //   child: Container(
      //     child: BottomNavigationBar(
      //       elevation: 0,
      //       items: [
      //         BottomNavigationBarItem(
      //           icon: Icon(Icons.home),
      //           label: "Home",
      //         ),
      //         BottomNavigationBarItem(
      //           icon: Icon(Icons.favorite),
      //           label: "Favorite",
      //         )
      //       ],
      //     ),
      //   ),
      // ),

      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

      // floatingActionButton: FloatingActionButton(
      //   child: Icon(Icons.add),
      //   onPressed: () {},
      // ),

      floatingActionButton: FloatingActionButton.extended(
          icon: const Icon(Icons.add),
          label: const Text('Open'),
          onPressed: toggleBottomSheet),
    );
  }
}

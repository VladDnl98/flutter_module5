import 'package:flutter/material.dart';

class ScaffoldExample extends StatefulWidget {
  ScaffoldExample({Key? key}) : super(key: key);

  @override
  _ScaffoldExampleState get createState => _ScaffoldExampleState();
}

class _ScaffoldExampleState extends State<ScaffoldExample> {
  int tabIndex = 0;
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  late PersistentBottomSheetController _controller;

  void toggleBottomSheet() {
    if (_controller == null) {
      _controller = scaffoldKey.currentState!.showBottomSheet(
        (context) => Container(
          color: Colors.deepOrange,
          height: 200,
          child: Center(
            child: Text('BOTTOM SHEET'),
          ),
        ),
      );
    } else {
      _controller.close();
      _controller = null!;
    }
  }

  void openDrawer() {
    scaffoldKey.currentState?.openDrawer();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        title: Text('App Bar Title'),
        centerTitle: true,
        actions: [
          Builder(
            builder: (context) => IconButton(
              icon: Icon(Icons.person),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            ),
          ),
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () {},
          )
        ],
      ),
      drawer: Drawer(
        child: Column(
          children: [
            DrawerHeader(
              child: CircleAvatar(
                radius: 60,
                backgroundColor: Colors.green,
                backgroundImage: NetworkImage(
                    'https://img.artlebedev.ru/everything/bezlimit/identity/morda/bezlimit-identity-1200.jpg'),
              ),
            ),
            ListTile(
              title: Text('Главная'),
              leading: Icon(Icons.home),
              trailing: Icon(Icons.arrow_forward),
            ),
            ListTile(
              title: Text('Брони'),
              leading: Icon(Icons.home),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {
                print('TAP');
              },
              onLongPress: () {
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
              child: Text('Open Drawer'),
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
        icon: Icon(Icons.add),
        label: Text('Open'),
        onPressed: toggleBottomSheet,
      ),
    );
  }
}

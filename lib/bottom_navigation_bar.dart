import 'package:flutter/material.dart';

class TabItem {
  String? tittle;
  Icon? icon;
  TabItem({this.tittle, this.icon});
}

final List<TabItem> _tabBar = [
  TabItem(tittle: "Photo", icon: const Icon(Icons.home)),
  TabItem(tittle: "Photo", icon: const Icon(Icons.chat)),
  TabItem(tittle: "Photo", icon: const Icon(Icons.album)),
];

class BottomNavigationBarExample extends StatefulWidget {
  const BottomNavigationBarExample({Key? key}) : super(key: key);

  @override
  _BottomNavigationBarExampleState get createState =>
      _BottomNavigationBarExampleState();
}

class _BottomNavigationBarExampleState extends State<BottomNavigationBarExample>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;
  int _currenTabIndex = 0;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: _tabBar.length, vsync: this);
    _tabController?.addListener(() {
      // ignore: avoid_print
      print('Listener: ${_tabController?.index}');
      setState(() {
        _currenTabIndex = _tabController!.index;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Navigation bar"),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          Container(
            color: Colors.green,
            child: const Center(child: Text("1")),
          ),
          Container(
            color: Colors.yellow,
            child: const Center(child: Text("2")),
          ),
          Container(
            color: Colors.purple,
            child: const Center(child: Text("3")),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          setState(() {
            _tabController?.index = index;
            _currenTabIndex = index;
          });
        },
        currentIndex: _currenTabIndex,
        items: [
          for (final item in _tabBar)
            BottomNavigationBarItem(
              label: item.tittle,
              icon: item.icon!,
            )
        ],
      ),
    );
  }
}

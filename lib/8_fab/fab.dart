import 'package:flutter/material.dart';

import '../app_drawer.dart';
import '../router.dart';
import 'first_tab.dart';
import 'second_tab.dart';

final fABRoute = RouteItem(
  (ctx) => FABScreen(),
  FABScreen.routeName,
  FABScreen.title,
);

class FABScreen extends StatefulWidget {
  static const String routeName = 'fab';
  static const String title = 'Floating Action Button';

  @override
  _FABScreenState createState() => _FABScreenState();
}

class _FABScreenState extends State<FABScreen> {
  int _selectedPageIndex = 0;
  List<Widget> pages = [FirstTab(), SecondTab()];
  List<String> titles = ['first', 'second'];

  void selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  List<BottomNavigationBarItem> buildTabs() {
    int count = -1;
    return pages.map((item) {
      count++;
      return BottomNavigationBarItem(
        icon: Icon(Icons.pages),
        title: Text(titles[count]),
      );
    }).toList();
  }

  Widget buildBottomTabs(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(FABScreen.title),
      ),
      drawer: AppDrawer(),
      body: pages[_selectedPageIndex],
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 200.0,
          child: Center(
            child: Text(
              'BottomBar',
              style: TextStyle(
                fontSize: 30,
                color: Theme.of(context).primaryTextTheme.title.color,
              ),
            ),
          ),
        ),
        color: Theme.of(context).primaryColorDark,
      ),
      // floatingActionButton: FloatingActionButton(
      //   child: const Icon(Icons.add),
      //   backgroundColor: Theme.of(context).accentColor,
      //   onPressed: () {},
      // ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Container(
        padding: EdgeInsets.only(bottom: 25.0),
        child: Align(
          alignment: Alignment.bottomCenter,
          child: FloatingActionButton.extended(
            onPressed: () {},
            icon: Icon(Icons.phone_android),
            label: Text("Authenticate using Phone"),
            splashColor: Colors.black,
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }

  @override
  Widget build(BuildContext context) {
    return buildBottomTabs(context);
  }
}

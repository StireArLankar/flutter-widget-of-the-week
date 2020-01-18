import 'package:flutter/material.dart';
import 'package:flutter_widget_of_the_week/app_drawer.dart';

class TabsScreen extends StatefulWidget {
  final List<Widget> pages;
  final List<String> titles;
  final String title;

  TabsScreen(this.pages, this.titles, this.title);

  @override
  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  int _selectedPageIndex = 0;

  void selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  List<BottomNavigationBarItem> buildTabs() {
    int count = -1;
    return widget.pages.map((item) {
      count++;
      return BottomNavigationBarItem(
        icon: Icon(Icons.pages),
        title: Text(widget.titles[count]),
      );
    }).toList();
  }

  Widget buildBottomTabs(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      drawer: AppDrawer(),
      body: widget.pages[_selectedPageIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        onTap: selectPage,
        backgroundColor: Theme.of(context).primaryColor,
        unselectedItemColor: Colors.white,
        selectedItemColor: Colors.black,
        currentIndex: _selectedPageIndex,
        items: buildTabs(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return buildBottomTabs(context);
  }
}

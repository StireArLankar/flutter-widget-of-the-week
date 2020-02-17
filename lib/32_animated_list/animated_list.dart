import 'package:flutter/material.dart';
import 'package:flutter_widget_of_the_week/app_drawer.dart';

import '../router.dart';

final animatedListRoute = RouteItem(
  (ctx) => AnimatedListScreen(),
  AnimatedListScreen.routeName,
  AnimatedListScreen.title,
);

class AnimatedListScreen extends StatefulWidget {
  static const String routeName = 'AnimatedList';
  static const String title = 'AnimatedList';

  @override
  AnimatedListScreenState createState() => AnimatedListScreenState();
}

class AnimatedListScreenState extends State<AnimatedListScreen>
    with SingleTickerProviderStateMixin {
  // the GlobalKey is needed to animate the list
  final GlobalKey<AnimatedListState> _listKey = GlobalKey();
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(
      vsync: this,
      length: 4,
      initialIndex: 0,
    );
  }

  // backing data
  List<String> _data = ['Horse', 'Cow', 'Camel', 'Sheep', 'Goat'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AnimatedListScreen.title),
      ),
      drawer: AppDrawer(),
      body: Column(
        children: <Widget>[
          SizedBox(
            height: 400,
            child: AnimatedList(
              key: _listKey,
              initialItemCount: _data.length,
              itemBuilder: (context, index, animation) {
                return _buildItem(_data[index], animation);
              },
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: <Widget>[
                buildTabContent(
                  'Insert single item',
                  _insertSingleItem,
                ),
                buildTabContent(
                  'Insert multiple items',
                  _insertMultipleItems,
                ),
                buildTabContent(
                  'Remove single item',
                  _removeSingleItems,
                ),
                buildTabContent(
                  'Remove multiple items',
                  _removeMultipleItems,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Center buildTabContent(String title, Function onPress) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text('Swipe me'),
          RaisedButton(
            child: Text(
              title,
              style: TextStyle(fontSize: 20),
            ),
            onPressed: onPress,
          ),
        ],
      ),
    );
  }

  Widget _buildItem(String item, Animation animation) {
    return SizeTransition(
      sizeFactor: animation,
      child: Card(
        child: ListTile(
          title: Text(
            item,
            style: TextStyle(fontSize: 20),
          ),
        ),
      ),
    );
  }

  void _insertSingleItem() {
    String item = "Pig";
    int insertIndex = 2;
    _data.insert(insertIndex, item);
    _listKey.currentState.insertItem(insertIndex);
  }

  void _insertMultipleItems() {
    final items = ['Pig', 'Chichen', 'Dog'];
    int insertIndex = 2;
    _data.insertAll(insertIndex, items);
    // This is a bit of a hack because currentState doesn't have
    // an insertAll() method.
    for (int offset = 0; offset < items.length; offset++) {
      _listKey.currentState.insertItem(insertIndex + offset);
    }
  }

  void _removeSingleItems() {
    int removeIndex = 2;
    String removedItem = _data.removeAt(removeIndex);
    // This builder is just so that the animation has something
    // to work with before it disappears from view since the
    // original has already been deleted.
    AnimatedListRemovedItemBuilder builder = (context, animation) {
      // A method to build the Card widget.
      return _buildItem(removedItem, animation);
    };
    _listKey.currentState.removeItem(removeIndex, builder);
  }

  void _removeMultipleItems() {
    int removeIndex = 2;
    int count = 2;
    for (int i = 0; i < count; i++) {
      String removedItem = _data.removeAt(removeIndex);
      AnimatedListRemovedItemBuilder builder = (context, animation) {
        return _buildItem(removedItem, animation);
      };
      _listKey.currentState.removeItem(removeIndex, builder);
    }
  }
}

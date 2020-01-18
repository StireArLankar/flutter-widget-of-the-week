import 'package:flutter/material.dart';

const double _ITEM_HEIGHT = 70.0;

class SecondTab extends StatefulWidget {
  SecondTab({Key key}) : super(key: key);

  @override
  _SecondTabState createState() => _SecondTabState();
}

class _SecondTabState extends State<SecondTab> {
  List<String> _items = [];
  ScrollController _controller;

  @override
  void initState() {
    super.initState();

    _controller = ScrollController();

    _items.add("Apples");
    _items.add("Oranges");
    _items.add("Rosemary");
    _items.add("Carrots");
    _items.add("Potatoes");
    _items.add("Mushrooms");
    _items.add("Thyme");
    _items.add("Tomatoes");
    _items.add("Peppers");
    _items.add("Salt");
    _items.add("Ground ginger");
    _items.add("Cucumber");
  }

  Widget buildList() {
    return Expanded(
      child: ListView.separated(
        separatorBuilder: (ctx, index) {
          return const Divider();
        },
        itemBuilder: (ctx, index) {
          return _singleItemDisplay(_items[index]);
        },
        itemCount: _items.length,
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        controller: _controller,
      ),
    );
  }

  Widget buildButtons() {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FlatButton(
            textColor: Colors.blueGrey,
            color: Colors.white,
            child: Text('SELECT ORANGES'),
            onPressed: _scrollToOranges,
          ),
          FlatButton(
            textColor: Colors.blueGrey,
            color: Colors.white,
            child: Text('SELECT TOMATOES'),
            onPressed: _scrollToTomatoes,
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 4.0),
      child: Column(
        children: <Widget>[
          buildButtons(),
          buildList(),
        ],
      ),
    );
  }

  Widget _singleItemDisplay(String item) {
    return Container(
      height: _ITEM_HEIGHT,
      padding: const EdgeInsets.symmetric(vertical: 2.0),
      child: Container(
        padding: const EdgeInsets.all(2.0),
        color: Color(0x33000000),
        child: Text(item),
      ),
    );
  }

  void _scrollToOranges() {
    // setState(() {
    final index = _items.indexWhere((item) => item == "Oranges");
    _controller.animateTo(
      index * _ITEM_HEIGHT,
      duration: Duration(seconds: 1),
      curve: Curves.ease,
    );

    // for (var item in _items) {
    //   if (item.displayName == "Oranges") {
    //     item.selected = true;
    //   } else {
    //     item.selected = false;
    //   }
    // }
    // });
  }

  void _scrollToTomatoes() {
    final index = _items.indexWhere((item) => item == "Tomatoes");
    _controller.animateTo(
      index * _ITEM_HEIGHT,
      duration: Duration(seconds: 1),
      curve: Curves.ease,
    );
    // setState(() {
    //   for (var item in _items) {
    //     if (item.displayName == "Tomatoes") {
    //       item.selected = true;
    //     } else {
    //       item.selected = false;
    //     }
    //   }
    // });
  }
}

class Item {
  final String displayName;

  Item(this.displayName);
}

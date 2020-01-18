import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class FirstTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: <Widget>[
          Expanded(
            child: CustomScrollView(
              slivers: <Widget>[
                SliverAppBar(
                  floating: true,
                  pinned: true,
                  actions: <Widget>[
                    IconButton(
                      icon: Icon(Icons.list),
                      onPressed: () {},
                    )
                  ],
                  expandedHeight: 120,
                  flexibleSpace: FlexibleSpaceBar(
                    title: Text('Floating'),
                  ),
                ),
                SliverList(
                  delegate: SliverChildBuilderDelegate((ctx, index) {
                    return Container(
                      height: 50,
                      alignment: Alignment.center,
                      color: Colors.orange[100 * (index % 9)],
                      child: Text('orange $index'),
                    );
                  }),
                )
              ],
            ),
          ),
          Expanded(
            child: CustomScrollView(
              slivers: <Widget>[
                SliverAppBar(
                  // floating: false,
                  pinned: true,
                  actions: <Widget>[
                    IconButton(
                      icon: Icon(Icons.list),
                      onPressed: () {},
                    )
                  ],
                  expandedHeight: 120,
                  flexibleSpace: FlexibleSpaceBar(
                    title: Text('Non-floating'),
                  ),
                ),
                SliverList(
                  delegate: SliverChildBuilderDelegate((ctx, index) {
                    return Container(
                      height: 50,
                      alignment: Alignment.center,
                      color: Colors.orange[100 * (index % 9)],
                      child: Text('orange $index'),
                    );
                  }),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

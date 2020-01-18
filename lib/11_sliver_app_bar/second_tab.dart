import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class SecondTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: <Widget>[
          Expanded(
            child: CustomScrollView(
              slivers: <Widget>[
                SliverAppBar(
                  pinned: true,
                  actions: <Widget>[
                    IconButton(
                      icon: Icon(Icons.list),
                      onPressed: () {},
                    )
                  ],
                  expandedHeight: 120,
                  backgroundColor: Colors.cyan[400],
                  flexibleSpace: FlexibleSpaceBar(
                    background: Container(color: Colors.red[600]),
                    title: Text('Pinned'),
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
                  actions: <Widget>[
                    IconButton(
                      icon: Icon(Icons.list),
                      onPressed: () {},
                    )
                  ],
                  expandedHeight: 120,
                  flexibleSpace: FlexibleSpaceBar(
                    title: Text('Non-pinned'),
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

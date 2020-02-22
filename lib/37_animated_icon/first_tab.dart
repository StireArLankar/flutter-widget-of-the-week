import 'package:flutter/material.dart';

import './icon.dart';

class FirstTab extends StatefulWidget {
  @override
  _FirstTabState createState() => _FirstTabState();
}

class _FirstTabState extends State<FirstTab>
    with SingleTickerProviderStateMixin {
  AnimationController _animationController;
  bool isPlaying = false;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 300),
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Wrap(
        direction: Axis.vertical,
        alignment: WrapAlignment.spaceEvenly,
        children: <Widget>[
          IconButton(
            iconSize: 50,
            icon: Icon(isPlaying ? Icons.pause : Icons.play_arrow),
            onPressed: _handleOnPressed,
          ),
          CustomIcon(AnimatedIcons.play_pause),
          CustomIcon(AnimatedIcons.menu_arrow),
          CustomIcon(AnimatedIcons.ellipsis_search),
          CustomIcon(AnimatedIcons.menu_home),
          CustomIcon(AnimatedIcons.view_list),
          CustomIcon(AnimatedIcons.event_add),
          CustomIcon(AnimatedIcons.close_menu),
        ],
      ),
    );
  }

  void _handleOnPressed() {
    setState(() {
      isPlaying = !isPlaying;
      isPlaying
          ? _animationController.forward()
          : _animationController.reverse();
    });
  }
}

import 'dart:async';

import 'package:flutter/material.dart';
import 'model.dart';

class NeptuniaTab extends StatefulWidget {
  @override
  _NeptuniaTabState createState() => _NeptuniaTabState();
}

class _NeptuniaTabState extends State<NeptuniaTab> {
  final PageController ctr = PageController(viewportFraction: 0.8);
  final streamCtr = StreamController<List<NeptuniaItem>>();
  Stream<NeptuniaItem> slides;

  Tags activeTag = Tags.all;
  int currentPage = 0;

  @override
  void dispose() {
    streamCtr.close();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    streamCtr.add(neptunias);

    ctr.addListener(() {
      int next = ctr.page.round();

      if (currentPage != next) {
        setState(() {
          currentPage = next;
        });
      }
    });
  }

  void addToStream(Tags tag) {
    if (tag != Tags.all) {
      final list = neptunias.where((nep) => nep.tags.contains(tag)).toList();
      streamCtr.add(list);
    } else {
      streamCtr.add(neptunias);
    }
    setState(() {
      activeTag = tag;
    });
  }

  Widget _buildStoryPage(NeptuniaItem data, bool active) {
    final double blur = active ? 30 : 0;
    final double offset = active ? 20 : 0;
    final double top = active ? 100 : 200;
    return AnimatedContainer(
      duration: Duration(milliseconds: 500),
      curve: Curves.easeInOutCirc,
      margin: EdgeInsets.only(top: top, bottom: 50, right: 20, left: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
          fit: BoxFit.contain,
          image: NetworkImage(data.img),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black87,
            blurRadius: blur,
            offset: Offset(0, offset),
          ),
        ],
      ),
      child: Center(
        child: Text(
          data.title,
          style: TextStyle(fontSize: 40, color: Colors.white),
        ),
      ),
    );
  }

  Widget _buildButton(Tags tag) {
    Color color = activeTag == tag ? Colors.purple : Colors.white;
    return FlatButton(
      color: color,
      child: Text('#$tag'),
      onPressed: () => addToStream(tag),
    );
  }

  Widget _buildTagPage() {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'NEPTUNIAS',
            style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
          ),
          Text('Filter'),
          ...tags.map((tag) => _buildButton(tag)).toList(),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<NeptuniaItem>>(
      stream: streamCtr.stream,
      initialData: [],
      builder: (ctx, snap) {
        List slideList = snap.data.toList();

        return PageView.builder(
          controller: ctr,
          itemCount: slideList.length + 1,
          itemBuilder: (ctx, int currentIdx) {
            if (currentIdx == 0) {
              return _buildTagPage();
            } else {
              bool active = currentIdx == currentPage;
              return _buildStoryPage(slideList[currentIdx - 1], active);
            }
          },
        );
      },
    );
  }
}

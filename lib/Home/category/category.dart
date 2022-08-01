import 'package:flutter/material.dart';
import 'package:instant/Home/category/categorymap.dart';

class category extends StatefulWidget {
  @override
  _categoryState createState() => _categoryState();
}

class _categoryState extends State<category> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        GridView.count(
          crossAxisCount: 3,
          childAspectRatio: (100 / 160),
          controller: ScrollController(keepScrollOffset: false),
          shrinkWrap: true,
          scrollDirection: Axis.vertical,
          children: [
              categorymap(),
              categorymap(),
              categorymap(),
              categorymap(),
              categorymap(),
          ],
        ),
      ],
    );
  }
}

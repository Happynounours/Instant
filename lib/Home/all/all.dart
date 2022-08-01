import 'package:flutter/material.dart';

import 'allmap.dart';

class all extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          allmap(),
          allmap(),
          allmap(),
          allmap(),
          allmap(),
          allmap(),
          allmap(),
          allmap(),
          allmap(),

        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          toolbarHeight: 0,
          bottom: TabBar(
            tabs: [
              Text('catégorie'.toUpperCase()),
              Text(
                'tout'.toUpperCase(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
